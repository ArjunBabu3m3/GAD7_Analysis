# GAD7_Analysis

### Table of contents
* [Problem Statement](#problem-statement)
* [Technologies](#technologies)
* [Steps Involved](#steps-involved)
* [Results and Conclusion](#results-and-conclusion)


### Problem Statement
Here are the step I followed in the analysis of GAD-7 validated assessments data, which is
used to aid in the diagnosis of generalized anxiety disorder as well as screen for panic, social
anxiety, and post traumatic stress disorder .
The GAD-7 is a 7 question assessment that asks how often one has been bothered by the
problems represented in each question over the last two weeks. The person then scores each
question from 0 to 3.

To score the GAD-7, the values in each question are summed to get the final score.
When screening for anxiety disorders, a recommended threshold for further clinical evaluation is
a score of 10 or greater.

During the course of treatment, patients are asked by their care provider to complete these
validated assessments. The cadence at which these are given are typically monthly or twice a
month but it can vary.
The clinical purpose of these assessments is to help support clinicians in making a diagnosis, to
quantify anxiety symptoms, and to monitor changes over time to see if therapy is making a
difference. The provider can see this data too, building the basis of a conversation they can
have together.


### Technologies
* Python 
* SQL
* Tableau


### Steps Involved 
![alt text](/images/steps.png)


### Results and Conclusion 

When I focused on the patients in the "further clinical evaluation" (FCE=1) required category.
Most of them are currently in severe conditions. Out of this Only 7 of the patients improved to a score of below 10.
But the rest 29 patients require further clinical evaluation.  

This is alarming! because these patients have done a lot of tests that were tagged as further clinical evaluation required. 
Yet displaying high scores in the last test they did. More attention needs to be given to this group of patients.

The providers will have to look more into their cases.
Rest of the results are very easy to read, as I have vizualized it as line graphs to easily understand the progress trend of each patients.

![alt text](/images/result.png)

Further Analysis is mentioned in the python file. For the tableau visualization please follow the following link:
https://public.tableau.com/profile/arjun.babu4899#!/vizhome/NeuroFlow_Viz/Story1

![alt text] https://user-images.githubusercontent.com/61573655/116028877-b5d79900-a61d-11eb-817e-797d61c55435.mov


