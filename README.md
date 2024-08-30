# ECT Project

A flutter application that will be used to diagnose students and analyze data.<br />
This application consists of four thinking exercises; each exercise tests the student's abilities from different aspects.<br />
The application saves the participant's data and analyzes the results.

# Overview
The Elementary Cognitive Tasks System study highlights the complex relationship between cognitive task performance and academic success. By examining the role of response times in various cognitive tasks, the study provides a
deeper understanding of how different aspects of cognition contribute to learning and academic achievement. Furthermore, the study’s focus on technological
variability offers valuable insights into how digital platforms may influence cognitive assessments, paving the way for more equitable and effective educational
practices.

# Objective
This project seeks to explore the correlation between response times in specific ECTs
and students’ academic performance. By analyzing the data collected from these tasks,
the study aims to draw meaningful conclusions that can contribute to educational assessments.


# What is Elementary Cognitive Tasks?
Elementary Cognitive Tasks (ECTs) are fundamental tasks used to measure basic cognitive processes such as perception, attention, memory, and decision-making. These tasks
are any of a range of basic tasks which require only a small number of mental processes
and which have easily specified correct outcomes so they designed to be simple and quick
to administer, often involving basic stimuli like letters, numbers, or shapes.


- [ECT Project](#ect-project)
  - [First Exam](#first-exam)
  - [Second Exam: Double game](#second-exam-double-game)
  - [Third Exam: Finding the A's game](#third-exam-finding-the-a-game)
  - [Fourth Exam: Number Comparison game](#fourth-exam-number-comparison-game)

# Task Descriptions
In order to examine the theory mentioned above we have created 4 elementary cognitive tasks by writing the code in flutter using dart language, and these tasks are:

## First Exam

**Exam explanation :** <br />
In this exam, an "open" shape appears for several milliseconds (right side shape or left side shape).

![](assets/images/RightShape.png)right side
![](assets/images/LeftShape.png) left side

As soon as the time period has expired, the form is replaced with a "complete" form.

![](assets/images/FullShape.png) complete form


The user will be required to select which direction of the shape he saw before the shape changed.<br />
In each round we save the time the image was displayed (milliseconds) and the correctness of the answer for each round.


![](assets/images/FirstExam.png)


If the user makes the correct choice, he will be presented with the choice again, but the amount of time he is exposed to it will decrease.<br />
In the event that the user answered the question incorrectly, the time will increase and the exam will continue.

## Second Exam: Double game


**Exam explanation :** <br />
During the exam, the user is presented with two cards that have only one symbol in common.<br />
The user must identify the common symbol and press on it as quickly as possible.<br />
In each round we save identification time.


![](assets/images/SecondExam.png)

## Third Exam: Finding the A game

”Finding A’s” test is designed to measure the perceptual speed (PS) of a participant in
locating the letter ’a’ in presented words. Perceptual speed refers to the ability to quickly
and accurately identify and process visual stimuli.


![](assets/images/FindingAExample.png)


## Fourth Exam: Number Comparison game

”Find the same digits”, or the ”Number Comparison” test (NC), is designed to assess how
quickly a participant can compare two numbers and determine whether or not they are
the same. The difficulty of the test is manipulated by varying the number of digits in each
number and the number of digits that participants need to compare before identifying
the first differing digit.

![](assets/images/FourthExam.png)

