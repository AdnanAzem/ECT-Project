# ECT Project

A flutter application that will be used to diagnose students and analyze data.<br />
This application consists of three thinking exercises; each exercise tests the student's abilities from different aspects.<br />
The application saves the participant's data and analyzes the results.

- [ECT Project](#ect-project)
  - [First Exam](#first-exam)
  - [Second Exam: Double game](#second-exam-double-game)
  - [Third Exam: Finding the A's game](#third-exam-Finding-the-A's-game)
  - [Fourth Exam: Number Copmresion game](#fourth-exam-Number-Compresion-game)



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

## Third Exam: Finding the A's game

”Finding A’s” test is designed to measure the perceptual speed (PS) of a participant in
locating the letter ’a’ in presented words. Perceptual speed refers to the ability to quickly
and accurately identify and process visual stimuli.


![](assets/images/FindingAExample.png)


## Fourth Exam: Number Copmresion game

”Find the same digits”, or the ”Number Comparison” test (NC), is designed to assess how
quickly a participant can compare two numbers and determine whether or not they are
the same. The difficulty of the test is manipulated by varying the number of digits in each
number and the number of digits that participants need to compare before identifying
the first differing digit.

![](assets/images/FourthExam.png)

