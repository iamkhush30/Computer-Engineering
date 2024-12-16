db.EMPLOYEE.insertMany([
    {'EID' : 1, 'ENAME' : 'Nick' , 'GENDER' : 'Male', 'JOININGDATE' : '01-JAN-13', 'SALARY' : 4000, 'CITY' : 'London'},
    {'EID' : 2, 'ENAME' : 'Julian' , 'GENDER' : 'Female', 'JOININGDATE' : '01-OCT-14', 'SALARY' : 3000, 'CITY' : 'New York'},
    {'EID' : 3, 'ENAME' : 'Roy' , 'GENDER' : 'Male', 'JOININGDATE' : '01-JUN-16', 'SALARY' : 3500, 'CITY' : 'London'},
    {'EID' : 4, 'ENAME' : 'Tom' , 'GENDER' : 'Male', 'SALARY' : 4500, 'CITY' : 'London'},
    {'EID' : 5, 'ENAME' : 'Jerry' , 'GENDER' : 'Male', 'JOININGDATE' : '01-FEB-13', 'SALARY' : 2800, 'CITY' : 'Sydney'},
    {'EID' : 6, 'ENAME' : 'Philip' , 'GENDER' : 'Male', 'JOININGDATE' : '01-JAN-15', 'SALARY' : 7000, 'CITY' : 'New York'},
    {'EID' : 7, 'ENAME' : 'Sara' , 'GENDER' : 'Female', 'JOININGDATE' : '01-AUG-17', 'SALARY' : 4800, 'CITY' : 'Sydney'},
    {'EID' : 8, 'ENAME' : 'Emily' , 'GENDER' : 'Female', 'JOININGDATE' : '01-JAN-15', 'SALARY' : 5500, 'CITY' : 'New York'},
    {'EID' : 9, 'ENAME' : 'Michael' , 'GENDER' : 'Male', 'SALARY' : 6500, 'CITY' : 'London'},
    {'EID' : 10, 'ENAME' : 'John' , 'GENDER' : 'Male', 'JOININGDATE' : '01-JAN-15', 'SALARY' : 8800, 'CITY' : 'London'},
])


db.STUDENT.insertMany([
    {'ROLLNO' : 101, 'SNAME' : 'Vina', 'DEPARTMENT' : 'CE', 'FEES' : 15000, 'SEM' : 3, 'GENDER' : 'Female', 'CITY' : 'Rajkot'},
    {'ROLLNO' : 102, 'SNAME' : 'Krisha', 'DEPARTMENT' : 'EC', 'FEES' : 8000, 'SEM' : 5, 'GENDER' : 'Female', 'CITY' : 'Ahmedabad'},
    {'ROLLNO' : 103, 'SNAME' : 'Priti', 'DEPARTMENT' : 'Civil', 'FEES' :  12000, 'SEM' : 7, 'GENDER' : 'Female', 'CITY' : 'Baroda'},
    {'ROLLNO' : 104, 'SNAME' : 'Mitul', 'DEPARTMENT' : 'CE', 'FEES' : 15000, 'SEM' : 3, 'GENDER' : 'Male', 'CITY' : 'Rajkot'},
    {'ROLLNO' : 105, 'SNAME' : 'Keshav', 'DEPARTMENT' : 'CE', 'FEES' : 15000, 'SEM' : 3, 'GENDER' : 'Male', 'CITY' : 'Jamnagar'},
    {'ROLLNO' : 106, 'SNAME' : 'Zarna', 'DEPARTMENT' : 'Civil', 'FEES' :  12000, 'SEM' : 5, 'GENDER' : 'Female', 'CITY' : 'Ahmedabad'},
    {'ROLLNO' : 107, 'SNAME' : 'Nima', 'DEPARTMENT' : 'EE', 'FEES' : 9000, 'SEM' : 5, 'GENDER' : 'Female', 'CITY' : 'Rajkot'},
    {'ROLLNO' : 108, 'SNAME' : 'Dhruv', 'DEPARTMENT' : 'Mechanical', 'FEES' : 10000, 'SEM' : 5, 'GENDER' : 'Male', 'CITY' : 'Rajkot'},
    {'ROLLNO' : 109, 'SNAME' : 'Krish', 'DEPARTMENT' : 'Mechanical', 'FEES' : 10000, 'SEM' : 7, 'GENDER' : 'Male', 'CITY' : 'Baroda'},
    {'ROLLNO' : 110, 'SNAME' : 'Zeel', 'DEPARTMENT' : 'EE', 'FEES' : 9000, 'SEM' : 3, 'GENDER' : 'Female', 'CITY' : 'Jamnagar'}
])

#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part – A: (Use EMPLOYEE collection of Lab No 17) 
# 1. Display distinct city.
db.EMPLOYEE.distinct("CITY")

# 2. Display city wise number of persons.
db.EMPLOYEE.aggregate([{$group : {_id:"$CITY" , empCount: {$sum : 1}}}])

# 3. Display sum of salary in your collection.
db.EMPLOYEE.aggregate([{$group : {_id : "" , empCount: {$sum : "$SALARY"}}}])

# 4. Display average of salary in your document.
db.EMPLOYEE.aggregate([{$group : {_id : "" , empCount: {$avg : "$SALARY"}}}])

# 5. Display maximum and minimum salary of your document.
db.EMPLOYEE.aggregate([{$group : {_id : "" , empCount: {$max : "$SALARY"}}}])

# 6. Display city wise total salary in your collection.
db.EMPLOYEE.aggregate([{$group : {_id : "" , empCount: {$min : "$SALARY"}}}])

# 7. Display gender wise maximum salary in your collection.
db.EMPLOYEE.aggregate([{$group : {_id : "$GENDER" , empCount: {$max : "$SALARY"}}}])

# 8. Display city wise maximum and minimum salary.
db.EMPLOYEE.aggregate([{$group : {_id : "$CITY" , maxSalary: {$max : "$SALARY"} , minSalary: {$min : "$SALARY"}}}])

# 9. Display count of persons lives in Sydney city in your collection.
db.EMPLOYEE.aggregate([{$match : {CITY : "Sydney"}},{$group : {_id : "$CITY" , empCount: {$sum : 1}}}])

# 10.  Display average salary of New York city. 
db.EMPLOYEE.aggregate([{$match : {CITY : "New York"}},{$group : {_id : "$CITY" , empCount: {$avg : "$SALARY"}}}])


#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part – B: (Use STUDENT collection of Lab No 17) 

# 1. Display distinct department.
db.STUDENT.distinct("DEPARTMENT")

# 2. Display city wise number of students.
db.STUDENT.aggregate([{$group : {_id:"$CITY" , stuCount: {$sum : 1}}}])

# 3. Display sum of fees in your collection. 
db.STUDENT.aggregate([{$group : {_id:"" , Fees: {$sum : "$FEES"}}}])

# 4. Display average of fees in your document.
db.STUDENT.aggregate([{$group : {_id:"" , AVGFees: {$avg : "$FEES"}}}])

# 5. Display maximum and minimum fees of your document. 
db.STUDENT.aggregate([{$group : {_id : "" , MAXFees: {$max : "$FEES"} , MINFees: {$min : "$FEES"}}}])


#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part – C: (Use STUDENT collection of Lab No 17) 

# 1. Display department wise total fees in your collection. 
db.STUDENT.aggregate([{$group : {_id:"$DEPARTMENT" , Fees: {$sum : "$FEES"}}}])

# 2. Display gender wise maximum fees in your collection. 
db.STUDENT.aggregate([{$group : {_id : "$GENDER" , MAXFees: {$max : "$FEES"}}}])

# 3. Display department maximum and minimum fees. 
db.STUDENT.aggregate([{$group : {_id:"$DEPARTMENT" , MAXFees: {$max : "$FEES"} , MINFees: {$min : "$FEES"}}}])

# 4. Display count of persons lives in Rajkot city in your collection.
db.STUDENT.aggregate([{$match : {CITY : "Rajkot"}},{$group : {_id : "$CITY" , stuCount: {$sum : 1}}}])

# Display department wise number of students.
db.STUDENT.aggregate([{$group : {_id:"$DEPARTMENT" , stuCount: {$sum : 1}}}])