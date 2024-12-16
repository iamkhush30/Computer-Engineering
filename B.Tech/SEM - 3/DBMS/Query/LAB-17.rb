use CSE_C1_503

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


#-----------------------------------------------------------------------------------------------------------------------------------------#


# PART - A

# 1. Display employees whose gender is Male.
db.EMPLOYEE.find({'GENDER' : {$eq : 'Male'}})

# 2. Display employees who belong to London city.
db.EMPLOYEE.find({'CITY' : {$eq : 'London'}})

# 3. Display employees whose salary is greater than 3500.
db.EMPLOYEE.find({'SALARY' : {$gt : 3500}})

# 4. Display employees whose joining date is before 2015-01-01.
db.EMPLOYEE.find({'JOININGDATE' : {$lt : '01-JAN-15'}})

# 5. Display employees whose EID is greater than or equal to 7.
db.EMPLOYEE.find({'EID' : {$gte : 7}})

# 6. Display employees whose city is Landon or New York (use:IN)
db.EMPLOYEE.find({'CITY' : {$in : ['London','New York']}})

# 7. Display employees who do not belongs to Landon or New York (use: NOT IN)
db.EMPLOYEE.find({'CITY' : {$nin : ['London','New York']}})

# 8. Display the EID of those employee who lives in city London.
db.EMPLOYEE.find({'CITY' : {$eq : 'London'}},{'EID' : 1, _id : 0})

# 9. Display first 2 employee names who lives in New york.
db.EMPLOYEE.find({'CITY' : {$eq : 'New York'}}).limit(2)

# 10. Display next 2 employee after skipping first 2 whose city is London.
db.EMPLOYEE.find({'CITY' : {$eq : 'London'}}).skip(2).limit(2)

# 11. Display Male employees who lives Sydney.
db.EMPLOYEE.find({
    $and : [
        {'GENDER' : {$eq : 'Male'}},
        {'CITY' : {$eq : 'Sydney'}}
    ]
})

# 12. Display EID, ENAME, CITY and SALARY of those employees who belongs to London or Sydney.
db.EMPLOYEE.find(
    {
        'CITY' : {
            $in : ['London','Sydney']
        }
    },
    {
        'EID' : 1, 
        'ENAME' : 1, 
        'CITY' : 1, 
        'SALARY' : 1, 
        _id : 0
    }
)

# 13. Display ENAME, SALARY, and CITY of those employee whose salary is more than 7000.
db.EMPLOYEE.find(
    {'SALARY' : {$gt : 7000}},
    {'ENAME' : 1, 'SALARY' : 1, 'CITY' : 1, _id : 0}
)

# 14. Display documents whose name start with E.
db.EMPLOYEE.find({'ENAME' : {$regex : /^E/}})

# 15. Display documents whose name starts with S or M in your collection.
db.EMPLOYEE.find({
    'ENAME' : {
        $or: [
            {$regex : /^E/}, 
            {$regex : /^S/}
        ]
    }
})

# 16. Display documents where city starts with A to M in your collection.
db.EMPLOYEE.find({'ENAME' : {$regex : /^[A-M]/}})

# 17. Display documents where city name ends in ‘ney’.
db.EMPLOYEE.find({'CITY' : {$regex : /ney$/}})

# 18. Display employee info whose name contains n. (Both uppercase(N) and lowercase(n))
db.EMPLOYEE.find({'ENAME' : {$regex : /(?i)n/}})
(
# 19. Display employee info whose name starts with E and having 5 characters.
db.EMPLOYEE.find({'ENAME' : {$regex : /^E..../}})

# 20. Display employee whose name start with S and ends in a.
db.EMPLOYEE.find({'ENAME' : {$regex : /^S.*a$/}})

# 21. Display EID, ENAME, CITY and SALARY whose name starts with ‘Phi’.
db.EMPLOYEE.find({'ENAME' : {$regex : /^Phi/}},{_id:0 , EID:1 , ENAME:1 , CITY:1 , SALARY:1})

# 22. Display ENAME, JOININGDATE and CITY whose city contains ‘dne’ as three letters in city name.
db.EMPLOYEE.find({'CITY' : {$regex : /dne/}},{_id:0 , ENAME:1 , JOININGDATE:1 , CITY:1})

# 23. Display ENAME, JOININGDATE and CITY who does not belongs to city London or Sydney.
db.EMPLOYEE.find({'CITY' : {$nin : ['London','Sydney']}},{_id:0 , ENAME:1 , JOININGDATE:1 , CITY:1})

# 24. Delete the documents whose city is New York.
db.EMPLOYEE.deleteMany({'CITY' : 'New York'})

# 25. Update ENAME of Nick to ‘Naysa’ and GENDER to ‘Female’.
db.EMPLOYEE.updateOne(
    {ENAME : 'Nick'},
    {$set : {ENAME : 'Naysa' , GENDER : '‘Female’'}}
)


#-----------------------------------------------------------------------------------------------------------------------------------------#


# PART - B

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


# 1. Display Female students.
db.STUDENT.find({GENDER : 'Female'})

# 2. Display students who belong to Rajkot city. 
db.STUDENT.find({CITY : 'Rajkot'})

# 3. Display students studying in 7th sem. 
db.STUDENT.find({SEM : 7})

# 4. Display students not studying in 3rd sem.
db.STUDENT.find({SEM : {$ne : 3}})

# 5. Display students whose roll no is greater than 107.
db.STUDENT.find({ROLLNO : {$gt : 107}})

# 6. Display students whose city is Jamnagar or Baroda (use:IN)
db.STUDENT.find({CITY : {$in : ['Rajkot','Baroda']}})

# 7. Display students whose fees is less than 9000.
db.STUDENT.find({FEES : {$lt : 9000}})

# 8. Display the roll no of those students who belongs to Mechanical department. 
db.STUDENT.find({DEPARTMENT : {$eq : 'Mechanical'}},{ROLLNO : 1, _id : 0})

# 9. Display first 2 students names who lives in Baroda. 
db.STUDENT.find({CITY : 'Baroda'}).limit(2)

# 10.  Display Male students who studying in 3rd sem.
db.STUDENT.find({$and : [{GENDER : 'Male'},{SEM : 3}]})

# 11.  Display sname and city and fees of those students whose roll no is less than 105. 
db.STUDENT.find({ROLLNO : {$lt : 105}},{_id:0 , SNAME:1 , CITY:1 , FEES:1})

# 12.  Display documents where sname start with K. 
db.STUDENT.find({SNAME : {$regex : "^K"}})

# 13.  Display documents where sname starts with Z or D in your collection.
db.STUDENT.find({SNAME : {$regex : "^[ZD]"}})

# 14.  Display documents where city starts with A to R in your collection. 
db.STUDENT.find({SNAME : {$regex : "^[A-R]"}})

# 15.  Display students’ info whose name start with P and ends in i.
db.STUDENT.find({SNAME : {$regex : "^P.*i$"}})

# 16.  Display students’ info whose department name starts with ‘C’.
db.STUDENT.find({DEPARTMENT : {$regex : "^C"}})

# 17.  Display name, sem, fees, and department whose city contains ‘med’ as three letters somewhere in city name. 
db.STUDENT.find({CITY : {$regex : ".*med.*"}},{SNAME:1 , SEM:1 , FEES:1 , DEPARTMENT:1 , _id:0})

# 18.  Display name, sem, fees, and department who does not belongs to city Rajkot or Baroda.  
db.STUDENT.find({CITY : {$nin : ['Rajkot','Baroda']}},{SNAME:1 , SEM:1 , FEES:1 , DEPARTMENT:1 , _id:0})

# 19.  Delete the documents whose city is Jamnagar. 
db.STUDENT.deleteMany({CITY : 'Jamnagar'})

# 20.  Update sname of Krish to ‘fenny’ and gender to ‘Female’.
db.STUDENT.updateOne(
    {SNAME : 'Krish'},
    {$set : {SNAME : 'Fenny' , GENDER : 'Female'}}
)


#-----------------------------------------------------------------------------------------------------------------------------------------#


# PART - C

# 1. Display next 2 students after skipping first 2 whose city is Ahmedabad.
db.STUDENT.find({CITY : 'Ahmedabad'}).skip(2).limit(2)

# 2. Display rollno, sname, fees, and department of those students who is from Baroda and belongs to CE department. 
db.STUDENT.find({$and : [{CITY : 'Ahmedabad'},{DEPARTMENT : 'CE'}]} , {_id:0 , ROLLNO : 1, SNAME:1 , FEES:1 , DEPARTMENT:1})

# 3. Display documents where city name ends in ‘oda’. 
db.STUDENT.find({CITY : {$regex : /.*oda$/}})
 
# 4. Display students’ info whose name contains v. (Both uppercase(V) and lowercase(v)) 
db.STUDENT.find({SNAME : {$regex : ".*(?i)v.*"}})

# 5. Display students’ info whose name starts with V and having 4 characters. 
db.STUDENT.find({SNAME : {$regex : "V..."}})