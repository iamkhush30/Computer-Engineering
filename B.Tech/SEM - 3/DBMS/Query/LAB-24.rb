EID EName Department Salary JoiningDate City 

db.EMPLOYEE.insertMany([
{'EID' : 101, 'EName' : 'Rahul', 'Department' : 'Admin', 'Salary' : 56000, 'JoiningDate' : '1-Jan-90', 'City' : 'Rajkot'},
{'EID' : 102, 'EName' : 'Hardik', 'Department' : 'IT', 'Salary' : 18000, 'JoiningDate' : '25-Sep-90', 'City' : 'Ahmedabad'},
{'EID' : 103, 'EName' : 'Bhavin', 'Department' : 'HR', 'Salary' : 25000, 'JoiningDate' : '14-May-91', 'City' : 'Baroda'},
{'EID' : 104, 'EName' : 'Bhoomi', 'Department' : 'Admin', 'Salary' : 39000, 'JoiningDate' : '8-Feb-91', 'City' : 'Rajkot'},
{'EID' : 105, 'EName' : 'Rohit', 'Department' : 'IT', 'Salary' : 17000, 'JoiningDate' : '23-Jul-90', 'City' : 'Jamnagar'},
{'EID' : 106, 'EName' : 'Priya', 'Department' : 'IT', 'Salary' : 9000 , 'JoiningDate' : '18-Oct-90', 'City' : 'Ahmedabad'},
{'EID' : 107, 'EName' : 'Neha', 'Department' : 'HR', 'Salary' : 34000, 'JoiningDate' : '25-Dec-91', 'City' : 'Rajkot'},
])


#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part A:
# 1. Display  the  Highest,  Lowest,  Total,  and  Average  salary  of  all  employees.  Label  the  columns  Maximum, Minimum, Total_Sal and Average_Sal, respectively. 


db.EMPLOYEE.aggregate([{$group : {_id : "" , Maximum: {$max : "$Salary"}, Minimum: {$min : "$Salary"}, Total_Sal: {$sum : "$Salary"}, Average_Sal: {$avg : "$Salary"}}}])

# 2. Find total number of employees of EMPLOYEE table. 
db.EMPLOYEE.aggregate([{$group : {_id : "" , empCount: {$sum : 1}}}])

# 3. Give maximum salary from IT department. 
db.EMPLOYEE.aggregate([{$match : {Department : "IT"}},{$group : {_id : "$Department" , maxSalary: {$max : "$Salary"}}}])

# 4. Count total number of cities of employee without duplication.
db.EMPLOYEE.distinct('City').count

# 5. Display city with the total number of employees belonging to each city. 
db.EMPLOYEE.aggregate([{$group : {_id : "$City" , empCount: {$sum : 1}}}])

# 6. Display city having more than one employee.
db.EMPLOYEE.aggregate([{$group : {_id : "$City" , empCount: {$sum : 1}}},{$match : {empCount : {$gt : 1}}}])

# 7. Give total salary of each department of EMPLOYEE table.
db.EMPLOYEE.aggregate([{$group : {_id : "$Department" , totalSalary: {$sum : "$Salary"}}}])

# 8. Give average salary of each department of EMPLOYEE table without displaying the respective department name. 
db.EMPLOYEE.aggregate([{$group : {_id : "$Department" , totalSalary: {$avg : "$Salary"}}},{$project : {_id : null,totalSalary:1}}])

# 9. Give minimum salary of employee who belongs to Ahmedabad.
db.EMPLOYEE.aggregate([{$match : {City : "Ahmedabad"}},{$group : {_id : "$City" , minSalary: {$min : "$Salary"}}}])

# 10.List the departments having total salaries more than 50000 and located in city Rajkot. 
db.EMPLOYEE.aggregate([{$match : {City : "Rajkot"}},{$group : {_id : "$Department" , totalSalary: {$sum : "$Salary"}}},{$match : {totalSalary : {$gt : 50000}}}])


#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part B: 
# 1. Count the number of employees living in Rajkot.
db.EMPLOYEE.aggregate([{$match : {City : "Rajkot"}},{$group : {_id : "" , empCount: {$sum : 1}}}])

# 2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE. 


# 3. Display the total number of employees hired before 1st January, 1991. 
db.EMPLOYEE.aggregate([{$match : {JoiningDate : {$lt : '1-Jan-91'}}},{$group : {_id : "" , empCount: {$sum : 1}}}])

# 4. Display total salary of each department with total salary exceeding 35000 and sort the list by total salary. 
db.EMPLOYEE.aggregate([{$group : {_id : "$Department" , totalSalary: {$sum : "$Salary"}}},{$match : {totalSalary : {$gt : 35000}}},{$sort : {totalSalary:1}}])

# 5. List out department names in which more than two employees. 
db.EMPLOYEE.aggregate([{$group : {_id : "$Department" , empCount: {$sum : 1}}},{$match : {empCount : {$gt : 2}}}])

# 6. Return all employee whose name consist of 5 character and starts with 'a' or starts with 'b'.
db.EMPLOYEE.find({EName : {$regex : /^[ab]....$/i}})

# 7. Return all employee whose name consist of minimum 3 character and starts with 'b' or 'r' or ’p’. 
db.EMPLOYEE.find({EName : {$regex : /^[brp]../i}})

# 8. Return all employee whose name ends with 'a' to ’d’.
db.EMPLOYEE.find({EName : {$regex : /.*[a-d]$/i}})

# 9. Return all employee whose name ends with Vowels.
db.EMPLOYEE.find({EName : {$regex : /.*[aeiou]$/i}})

# 10.  Return all employee whose name ends with Vowels or ‘f’ or ‘g’.
db.EMPLOYEE.find({EName : {$regex : /.*[aeioufg]$/i}})


#-----------------------------------------------------------------------------------------------------------------------------------------#


db.COMPANY.insertMany([
    {'Title' : 'Blasting Boxes', 'Company' : 'Simone Games', 'Type' : 'action adventure', 'Production_year' : 1998, 'System' : 'PC', 'Production_cost' : 100000, 'Revenue' : 200000, 'Rating' : 7},
    {'Title' : 'Run Run Run!', 'Company' : '13 Mad Bits', 'Type' : 'shooter', 'Production_year' : 2011, 'System' : 'PS3', 'Production_cost' : 3500000, 'Revenue' : 650000, 'Rating' : 3},
    {'Title' : 'Duckn’Go', 'Company' : '13 Mad Bits', 'Type' : 'shooter', 'Production_year' : 2012, 'System' : 'Xbox', 'Production_cost' : 3000000, 'Revenue' : 1500000, 'Rating' : 5},
    {'Title' : 'SQL Wars!', 'Company' : 'Vertabelo', 'Type' : 'wargames', 'Production_year' : 2017, 'System' : 'Xbox', 'Production_cost' : 5000000, 'Revenue' : 25000000, 'Rating' : 10},
    {'Title' : 'Tap Tap Hex!', 'Company' : 'PixelGaming Inc.', 'Type' : 'rhythm', 'Production_year' : 2006, 'System' : 'PS2', 'Production_cost' : 2500000, 'Revenue' : 3500000, 'Rating' : 7},
    {'Title' : 'NoRisk', 'Company' : 'Simone Games', 'Type' : 'action adventure', 'Production_year' : 2004, 'System' : 'PS2', 'Production_cost' : 1400000, 'Revenue' : 3400000, 'Rating' : 8}
])



db.collection1.aggregate([
    {$lookup : {
        from : collection2,
        localField : collection1-field,
        foreignField : collection2-field,
        as : ??
    }}
])
$unwinde