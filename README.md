Tidy Datasets for Human Activity Recognition Using Smartphones | README
===

## Overview
 
This repository contains two tidy datasets extracted from the `Human Activity Recognition Using Smartphones Data Set` of the `UCI Machine Learning Repository` [(link)](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
The source data for this project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## What you find in this repository

* __CodeBook.md__: Information about the raw data and the code book for the two extracted tidy datasets
* __README.md__: This file
* __run_analysis.R__: R script to transform the raw data into the two tidy datasets

## Fine-tuning features extraction

The datasets extracted a small subset of features from the raw data.  Should you need to alter that list, please update the script's `extractFeature` function which controls feature selection.

## Descriptive feature names

Feature variables have also been renamed to be more descriptive.  Should you need to alter how these features are renamed, please update the script's `extractFeature` function.


Both datasets were created using a subset feature set from the raw data.  Should you need to alter that list, feature selection is done in the script's `extractFeature` function.


## Loading the tidy datasets

### First dataset

```r
df <- read.table(file = 'first-dataset.txt',
	header = TRUE,
	stringsAsFactors = TRUE)
```

### Second dataset

```r
df <- read.table(file = 'second-dataset.txt',
	header = TRUE,
	stringsAsFactors = TRUE)
```

## How to regenerate the tidy datasets

If, however, you need to extract different features, please refer to the documentation within the `run_analysis.R` script on fine tuning what features get extracted.  The script is self-contained and no other file needs to be updated.

1. Clone this repository or download its files into a new folder that we'll refer to as the root directory.
1. Download the raw data (a `.zip` file) in the root directory and unzip it there.  The decompression tool will create a `UCI HAR Dataset` folder within the root directory.
1. Open a `R` console and set this root as the working directory.
1. Modify the `run_analysis.R` script and source it.  The script will load the dataset and create two new datasets in `text` format: `first-dataset.csv` and `second-dataset.csv` in the root directory.

## Dependencies

* The `run_analysis.R` script depends on the `dplyr` library.
