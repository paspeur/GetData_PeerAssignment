library(dplyr)

##########
# Part I
##########
#
# 1. Merges the training and the test sets to create one data set
# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names
#
##########

##################
# extractFeature
##################

# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement
#
#    'extractFeature' controls which features get extracted in the first data set

extractFeature <- function(name) {
	name %>%
		grepl(pattern = '-(std|mean)([[:upper:]][[:lower:]]*)*\\(\\)')
}

#########################
# normalizedFeatureName
#########################

# 4. (first part) Appropriately labels the data set with descriptive variable
#    names:
#
#    Columns in data frames can be referenced through variables (e.g.,
#      df$feature) whose names are the data frame's column names.  R will
#      normalize the name of these columns if we do not abide R's variable
#      naming convention.  In particular, our dataset has names with
#      parenthesis '()', commas ',', and dashes '-' which R will substitute as
#      periods '.'.  To fullfill objective 4, we are going to roll our own name
#      normalization function
#
#    For example, 'tBodyAcc-mean()-X' is being normalized as 'tBodyAcc.mean.X'.
#    R would have normalized the variable as 'tBodyAcc.mean...X'
#
#    An alternative to this customized function is 'make.names()' from the
#    'base' package but we would still have names with '..'

normalizedFeatureName <- function(name) {
	name %>%

		# remove '()'
		gsub(pattern = '\\(\\)', replace = '') %>%

		# remove ending ')'
		gsub(pattern = ')$', replace = '') %>%

		# replace '(', ',', ')', and '-' with '.'
		gsub(pattern = '[(),-]+', replace = '.')
}

##########################
# descriptiveFeatureName
##########################

# 4. (second part) Appropriately labels the data set with descriptive variable
#    names:
#
#    Replace beginning 't' with 'Time'
#    Replace beginning 'f' with 'Frequency'
#    Expand 'Acc' into 'Accelerometer'
#    Expand 'Gyro' into 'Gyroscope'
#    Expand 'Mag' into 'Magnitude'
#    Replace 'std' into 'sd'
#    Expand 'meanFreq' into 'meanFrequency'

descriptiveFeatureName <- function(name) {
	name %>%
		gsub(pattern = '^t', replace = 'Time.') %>%
		gsub(pattern = '^f', replace = 'Frequency.') %>%
		gsub(pattern = '(Acc)', replace = '\\1elerometer') %>%
		gsub(pattern = '(Gyro)', replace = '\\1scope') %>%
		gsub(pattern = '(Mag)', replace = '\\1nitude') %>%
		gsub(pattern = '.std', replace = '.sd') %>%
		gsub(pattern = '(.meanFreq)', replace = '\\1uency\\2')
}

##################
# newFeatureName
##################

newFeatureName <- function(name) {
	name <- normalizedFeatureName(name)
	name <- descriptiveFeatureName(name)
	name
}

dataset_root <- 'UCI HAR Dataset'

# Helper functions for filenames
###

featuresDataFilename <- function() {
	paste(dataset_root,
		'features.txt',
		sep = '/')
}

activityLabelsDataFilename <- function() {
	paste(dataset_root,
		'activity_labels.txt',
		sep = '/')
}

dataFilename <- function(subset, part) {
	paste(dataset_root,
		subset,
		paste0(part, '_', subset, '.txt'),
		sep = '/')
}

# Feature names
###

featureNames <- function() {

	# Features are stored in the 'features.txt' file.  The file is in the following format:
	#
	# <feature_index> <feature_name>

	feature_names_df <- read.table(file = featuresDataFilename(),
		header = FALSE,
		col.names = c('index', 'name'),
		colClasses = c('numeric', 'character'),
		stringsAsFactors = FALSE)

	# Reorder the data frame by the 'index' variable
	with(feature_names_df, feature_names_df[index,]) %>%

		# Which we then no longer need
		select(-index) %>%

		# And add to the data frame the 'extract' and 'new_name' variables
		mutate(extract = extractFeature(name),
			new_name = newFeatureName(name))
}

feature_names_df = featureNames()

# Activity labels
###

activityLabels <- function() {

	# Activity labels are stored in the 'activity_levels.txt' file.  The
	# file is in the format:
	#
	# <activity_label> <activity_name>

	read.table(file = activityLabelsDataFilename(),
		header = FALSE,
		col.names = c('Label', 'Activity'),
		colClasses = c('numeric', 'character'),
		stringsAsFactors = FALSE)
}

activity_labels_df = activityLabels()

# 1. (first part) Merges the training and the test sets to create one data set
#
#    Column merging of subject, features, and label into one dataset for the
#    train and test subsets
###

subjectFeaturesLabel <- function(subset) {

	subject_df <- read.table(file = dataFilename(subset, 'subject'),
		header = FALSE,
		col.names = c('Subject'),
		colClasses = c('numeric'),
		stringsAsFactors = FALSE)

	features_df <- read.table(file = dataFilename(subset, 'X'),
		header = FALSE,

		# New (normalized and made descriptive) names as column names
		col.names = feature_names_df$new_name,

		colClasses = rep(x = 'numeric', times = length(feature_names_df)),
		stringsAsFactors = FALSE)

	# Only keep the extracted features
	features_df <- with(feature_names_df, features_df[extract])

	label_df <- read.table(file = dataFilename(subset, 'y'),
		header = FALSE,
		col.names = c('Label'),
		colClasses = c('numeric'),
		stringsAsFactors = FALSE)

	cbind(subject_df,
		features_df,
		label_df)
}

# 1. (second part) Merges the training and the test sets to create one data set
#
#    Row merging of the train and test subsets

train_df <- subjectFeaturesLabel('train')
test_df <- subjectFeaturesLabel('test')

first_dataset_df <- rbind(train_df,
	test_df)

# 3. Uses descriptive activity names to name the activities in the data set
#
#    Create a factor variable for the activity

first_dataset_df <- first_dataset_df %>%
	mutate(Activity = factor(x = Label,
		levels = activity_labels_df$Label,
		labels = activity_labels_df$Activity)) %>%
	select(-Label)

# Save this first dataset to disk.  To load it from disk, use the following:
#
# df <- read.table(file = 'first-dataset.csv', header = TRUE, stringsAsFactors = TRUE)

write.table(x = first_dataset_df,
	file = 'first-dataset.txt',
	row.names = FALSE)

###########
# Part II
###########
#
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject
#
##########

second_dataset_df <- first_dataset_df %>%
	group_by(Subject, Activity) %>%
	summarise_each(funs(mean))

# Save this second dataset to disk.  To load it from disk, use the following:
#
# df <- read.table(file = 'second-dataset.csv', header = TRUE, stringsAsFactors = TRUE)

write.table(x = second_dataset_df,
	file = 'second-dataset.txt',
	row.names = FALSE)
