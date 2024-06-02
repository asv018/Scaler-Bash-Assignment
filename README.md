# Scaler-Bash-Assignment

## Overview

This repository contains solutions for a Bash scripting assignment consisting of three tasks:

1. Log File Analysis
2. Extract and Count File Types
3. Check Service Status

## Requirements

- Bash
- Linux environment
- Basic understanding of shell scripting

## Assignment Breakdown

### Question 1: Log File Analysis

**Objective**: Analyze a server log file to extract useful statistics and information.

**Features Implemented**:
1. **Total Requests Count**: Outputs the total number of requests in the log file.
2. **Percentage of Successful Requests**: Calculates and prints the percentage of successful requests (HTTP status codes in the range 200-299).
3. **Most Active User**: Displays the IP address of the user who made the most requests.

**Script Name**: `./question1.sh assignment.log`


### Question 2: Extract and Count File Types

**Objective**: Write a script that counts and lists how many files of each type are present in a given directory.

**Features Implemented**:
1. **Traverse a specified directory recursively**
2. **Identify file types based on file extensions.**
3. **Count and list the number of files for each file type.**


**Script Name**: `./question2.sh ./`

### Question 3: Check Service Status

**Objective**: Develop a script that checks if a specific system service (like Apache or SSH) is running and reports its status.

**Features Implemented**:
1. **Accept the service name as a command line argument.**
2. **Use system commands to check if the service is active and running.**
3. **Output the current status of the service.**



**Script Name**: `./question3.sh whatsapp`

