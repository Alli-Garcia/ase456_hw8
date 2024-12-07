# User Requirements for Time Management App

## Overview
The following are the user requirements for the time management application that will help the user, Jack, manage and track his time efficiently. The application will be developed using Flutter for cross-platform compatibility and Firebase for data storage. These requirements are derived from the user's (Jack's) requests and broken down into smaller, manageable user stories.

## User Requirements

### 1. Core Functionality

- **Record Time Usage**
    - As a user, I want to be able to record my activities with fields for **DATE**, **FROM** (start time), **TO** (end time), **TASK**, and **TAG**, so that I can keep track of how I spend my time.
    - As a user, I want the ability to **input the DATE in multiple formats** (e.g., `2022/09/23` or `September 23, 2022`) for ease of use.
    - As a user, I want the ability to **input the FROM and TO times** in multiple formats (e.g., `09:30` or `9:30 AM`) to make data entry more convenient.

### 2. Query Time Usage

- **Search for Recorded Activities**
    - As a user, I want to **query activities by DATE**, so that I can see all tasks I completed on a specific day.
    - As a user, I want to **search for activities by TASK**, so that I can quickly find information about a particular task or activity.
    - As a user, I want to **search for activities by TAG**, so that I can filter out certain types of activities (e.g., STUDY or WORK).

### 3. Reports and Insights

- **Generate Reports**
    - As a user, I want to **generate a report** that shows all activities I did over a specific period (e.g., from `2021/01/01` to `2022/01/01`), so that I can understand how I spent my time over a long period.
    - As a user, I want to be able to **see a summary of the time spent on each activity** to determine which activities take up most of my time.

### 4. User Interface and Usability

- **Mobile Application Interface**
    - As a user, I want the app to be available on both **iPhone and Android**, so that I can use it on any of my devices.
    - As a user, I want an **easy-to-use GUI** with input fields and buttons that are clear and intuitive, so I can quickly input my data and navigate through the app.

### 5. Flexibility

- **Flexible Data Input**
    - As a user, I want to be able to **input data in multiple formats**, whether it be dates or times, to allow me to use the format I am most comfortable with.

### 6. Future Feature Requests

- **Prioritization and Analysis**
    - As a user, I want to be able to **identify which activities I spend most of my time on**, so I can make informed decisions about my time management.
    - As a user, I would like to see **graphs or visualizations** of my time usage to better understand my habits (e.g., pie charts showing time spent on different types of activities).

## Technical Requirements (For Developers)

- The application should be developed using **Flutter** for a consistent cross-platform experience.
- **Firebase** should be used for data storage, allowing real-time updates and synchronization across devices.
- The data model should include fields for `date`, `from_time`, `to_time`, `task`, and `tag`.
- **Querying functionality** should be implemented to allow filtering by `date`, `task`, or `tag`.
- **Unit tests** should be written for each key feature to ensure correctness and reliability.