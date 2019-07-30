# Classification-R-NaiveBayes
Classification using Naive Bayes in Rstudio


 Data source: http://archive.ics.uci.edu/ml/datasets/Census+Income
 
 Task: Classification
 
 ML algorithm used: Naive Bayes
 

__________________________________________

How to run Reza_Marzban_1.R:
 In order to run the code in Rstudio, Spotfire or any other R based environment, we need to install naive bayes library. To do so, enter the following command:
 install.packages("naivebayes", repos = "https://cran.rstudio.com")
 
 Now you can simply run the program.
 
 
Sample Output (also attached as a screenshot in RstudioOutput.JPG):
[1] "Total Data size:"
[1] 48842
[1] "train set size:"
[1] 39122
[1] "test set size:"
[1] 9720
[1] "---------------------------"
[1] "train accuracy:"
[1] 81.63437
[1] "train error:"
[1] 18.36563
[1] "---------------------------"
[1] "test accuracy:"
[1] 81.27572
[1] "test error:"
[1] 18.72428
[1] "_________________________________________"

3 other PNG image visualization files are attached as well:
1- age per label, sex.png
2- Data Summary.png
3- label per education and capital-gain.png

These three file were created with Spotfire, and shows the relation of different attributes with our labels.
Our labels predicts if a person can make over 50k a year or not.


Explaination of Visualization files:
In Data Summary.png we can just see the basic statistic values for each numerical feature over our population.
in label per education and capital-gain.png you can check the slope of capital-gain for each education level seprately as they go from <=50k label to >50k.
For example, it shows that Professors have the highest slope, and Ph.D. are the second, and masters are third. on the other hand, the school different level educations have somehoe equally low slope.
In age per label, sex.png, the Y axis is the average age, the X axis is consisted of two main group (<=50k, >50k) and each main group have two micro group (male, Female). 
the bars are color coded by the race of people. As we can see the average age of people that get >50k is higher than the age of the ones with <=50k.
Also, among the people that get >50k, white peoples are the oldest, and the "others" race are the youngest.

 
