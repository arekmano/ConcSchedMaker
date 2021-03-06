[![Code Climate](https://codeclimate.com/github/arekmano/ConcordiaCourseScraper/badges/gpa.svg)](https://codeclimate.com/github/arekmano/ConcordiaCourseScraper)
[![Test Coverage](https://codeclimate.com/github/arekmano/ConcordiaCourseScraper/badges/coverage.svg)](https://codeclimate.com/github/arekmano/ConcordiaCourseScraper/coverage)


# Concordia Course Scraper
A simple ruby gem web scraper for extracting course information from Concordia University's web pages.

## Features
* Scrapes semester, course and course section information from the ENCS concordia web site.
* Extracts information to ruby objects.
* Saves information as 3 seperate CSV files.

## Installation
```ruby
gem build concordia_course_scraper.gemspec
gem install concordia_course_scraper-{VERSION}.gem
```

## Usage
Add the following to the ruby script:
```ruby
require "concordia_course_scraper"
```

Extract all data to ruby objects:
```ruby
scraper = ConcordiaCourseScraper.new
scraper.extract_all
courses = scraper.courses
sections = scraper.sections
semesters = scraper.semesters
```

Extract specific course level data:
```ruby
scraper = ConcordiaCourseScraper.new
scraper.extract('ELEC', 400)
courses = scraper.courses
sections = scraper.sections
semesters = scraper.semesters
```

Save extracted data to CSV files:
(Will save to 'courses.csv', 'sections.csv', 'semesters.csv' in the current directory by default)
```ruby
scraper = ConcordiaCourseScraper.new
scaper.extract_all
scraper.save
```

## Populating a MySQL database
The included 'concordia_course_schema.sql' file will set up the 'concordiacourses' database, able to accomodate the information stored on the CSV.
