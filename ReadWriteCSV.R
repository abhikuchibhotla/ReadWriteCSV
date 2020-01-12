#contents of my csv file are test.csv in C:\\GoogleCodeIn directory
 
#name,age,class
#ab11,11,5A
#ab22,12,6C
#ab44,14,8T
#ab23,14,8T
#ab25,15,9D

#Setting my working directory
setwd("C:\\GoogleCodeIn")
getwd()



#Read the file 
student <- read.csv(file = 'test.csv')

#print the contents of dataFrame 

student
#Add new column 'height'

student['height']<-NA

# add row to dataframe r
newRow <- data.frame(name='ab26',age='15',class='9D',height='170')
# Add the row to dataframe
student<- rbind(student,newRow)

#Print the new dataframe
student


#Save datFrame
write.csv(student, 'students.csv')


#Read the file again to verify the contents
 newStudent <- read.csv(file = 'students.csv')

#Printing entire contents
newStudent




