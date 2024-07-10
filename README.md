# PewlettHackardAnalysis


## Overview of the Pwelett Hackard analysis: 
A large segment of the workforce is looking to retire at Pewlett Hackard. This analysis will look at employee data to determine the number of retiring employees per job title, and identify employees who are eligible to participate in a mentorship program. 

## Results: 

### Major points from analysis:

  
- Point 1: In PGAdmin, we used a SQL query to find the full list of employees who are eligible for retirement, including their employee number, name (first and last), and job title. 
 
  ![retirement](https://raw.githubusercontent.com/ecost95/PewlettHackardAnalysis/main/Retirement_titles.png)
  
- Point 2: Next, we excluded duplicate employees (those who recieved a promotion and where listed twice on employee rosters) and employees who had already left the company.
  ![Unique titles](https://raw.githubusercontent.com/ecost95/PewlettHackardAnalysis/main/Unique_Titles.png)
  
- Point 3: We created a table to give us an overview count of all retiring employees grouped by job title 
  ![Retiring titles](https://raw.githubusercontent.com/ecost95/PewlettHackardAnalysis/main/Retiring_titles.png)
  
- Point 4: Finally, we created a table that shows us all employees eligible for a mentorship program. This table include the employee numbers, names, birth date, to and from dates, and job titles. 
  ![Mentoship Eligibility](https://raw.githubusercontent.com/ecost95/PewlettHackardAnalysis/main/Mentorship_elig.png)
  
## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

- According to the retirement table in Point 2, there are currently 72,458 current employees who are born between January 1, 1952 and December 31, 1955. Pewlett Hackard will have to replace all of these 72,458 employees once they retire. According to the retiring titles in point 3, the majority of these employees are in "Senior Engineer" or "Senior Staff" roles, so we would recommend promoting mid-level managers from within the company.  

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
 
 - According to the table in Point 4, there are 1,549 employees born in 1965 who are eligible for the mentorship program. Considering how many employees are retirement-age, this seems like a rather small pool of employees. We would recommend expanding this age range to include all employees born between 1955-1965.
 
### Additional Query 1: Young Professionals

- A query to find young professionals (age 18-30) who are currently employed at Pewlett Hackard. This would allow up to match up the younger employees  with retirement-age professionals for the mentorship program.


### Additional Query 2: Leadership program

- A query to find only the Senior Engineers and Senior Staff who are eligble for retirement. This would narrow down the retirement-age employees eligible for the mentorship program so only those with managerial experience are included.
