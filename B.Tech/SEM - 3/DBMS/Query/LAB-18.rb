db.DEPOSIT.insertMany([
    {'ACTNO' : 101, 'CNAME' : 'ANIL', 'BNAME' : 'VRCE', 'AMOUNT' : 1000.00, 'ADATE' : '1-3-95'},
    {'ACTNO' : 102, 'CNAME' : 'SUNIL', 'BNAME' : 'AJNI', 'AMOUNT' : 5000.00, 'ADATE' : '4-1-96'},
    {'ACTNO' : 103, 'CNAME' : 'MEHUL', 'BNAME' : 'KAROLBAGH', 'AMOUNT' : 3500.00, 'ADATE' : '17-11-95'},
    {'ACTNO' : 104, 'CNAME' : 'MADHURI', 'BNAME' : 'CHANDI', 'AMOUNT' : 1200.00, 'ADATE' : '17-12-95'},
    {'ACTNO' : 105, 'CNAME' : 'PRMOD', 'BNAME' : 'M.G. ROAD', 'AMOUNT' : 3000.00, 'ADATE' : '27-3-96'},
    {'ACTNO' : 106, 'CNAME' : 'SANDIP', 'BNAME' : 'ANDHERI', 'AMOUNT' : 2000.00, 'ADATE' : '31-3-96'},
    {'ACTNO' : 107, 'CNAME' : 'SHIVANI', 'BNAME' : 'VIRAR', 'AMOUNT' : 1000.00, 'ADATE' : '5-9-95'},
    {'ACTNO' : 108, 'CNAME' : 'KRANTI', 'BNAME' : 'NEHRU PLACE', 'AMOUNT' : 5000.00, 'ADATE' : '2-7-95'},
    {'ACTNO' : 109, 'CNAME' : 'MINU', 'BNAME' : 'POWAI', 'AMOUNT' : 7000.00, 'ADATE' : '10-8-95'}
])

db.BRANCH.insertMany([
    {'BANE' : 'VRCE', 'CITY' : 'NAGPUR'},
    {'BANE' : 'AJNI', 'CITY' : 'NAGPUR'},
    {'BANE' : 'KAROLBAGH', 'CITY' : 'DELHI'},
    {'BANE' : 'CHANDI', 'CITY' : 'DELHI'},
    {'BANE' : 'DHARAMPETH', 'CITY' : 'NAGPUR'},
    {'BANE' : 'M.G. ROAD', 'CITY' : 'BANGLORE'},
    {'BANE' : 'ANDHERI', 'CITY' : 'BOMBAY'},
    {'BANE' : 'VIRAR', 'CITY' : 'BOMBAY'},
    {'BANE' : 'NEHRU PLACE', 'CITY' : 'DELHI'},
    {'BANE' : 'POWAI', 'CITY' : 'BOMBAY'}
])

db.CUSTOMERS.insertMany([
    {'CNAME' : 'ANIL', 'CITY' : 'CALCUTTA'},
    {'CNAME' : 'SUNIL', 'CITY' : 'DELHI'},
    {'CNAME' : 'MEHUL', 'CITY' : 'BARODA'},
    {'CNAME' : 'MANDAR', 'CITY' : 'PATNA'},
    {'CNAME' : 'MADHURI', 'CITY' : 'NAGPUR'},
    {'CNAME' : 'PRAMOD', 'CITY' : 'NAGPUR'},
    {'CNAME' : 'SANDIP', 'CITY' : 'SURAT'},
    {'CNAME' : 'SHIVANI', 'CITY' : 'BOMBAY'},
    {'CNAME' : 'KRANTI', 'CITY' : 'BOMBAY'},
    {'CNAME' : 'NAREN', 'CITY' : 'BOMBAY'}
])

db.BORROW.insertMany([
    {'LOANNO' : 201, 'CNAME' : 'ANIL', 'BNAME' : 'VRCE', 'AMOUNT' : 1000.00},  
    {'LOANNO' : 206, 'CNAME' : 'MEHUL', 'BNAME' : 'AJNI', 'AMOUNT' : 5000.00},  
    {'LOANNO' : 311, 'CNAME' : 'SUNIL', 'BNAME' : 'DHARAMPETH', 'AMOUNT' : 3000.00},  
    {'LOANNO' : 321, 'CNAME' : 'MADHURI', 'BNAME' : 'ANDHERI', 'AMOUNT' : 2000.00},  
    {'LOANNO' : 375, 'CNAME' : 'PRMOD', 'BNAME' : 'VIRAR', 'AMOUNT' : 8000.00},  
    {'LOANNO' : 481, 'CNAME' : 'KRANTI', 'BNAME' : 'NEHRU PLACE', 'AMOUNT' : 3000.00}
])


# Part A: 

# 1. Retrieve all data from table DEPOSIT.
db.DEPOSIT.find()

# 2. Retrieve all data from table BORROW.
db.BORROW.find()

# 3. Retrieve all data from table CUSTOMERS.
db.CUSTOMERS.find()

# 4. Insert a record (550,’JAY’,’AJNI’,NULL)in the BORROW table.
db.BORROW.insertOne({'LOANNO' : 550, 'CNAME' : 'JAY', 'BNAME' : 'AJNI'})

# 5. Display Account No, Customer Name & Amount from DEPOSIT.
db.DEPOSIT.find({},{ACTNO:1 , CNAME:1 , AMOUNT:1 , _id:0})

# 6. Display Loan No, Amount from BORROW.
db.BORROW.find({},{LOANNO:1 , AMOUNT:1 , _id:0})

# 7. Display loan details of all customers who belongs to ‘ANDHERI’ branch. 
db.BORROW.find({BNAME : 'ANDHERI'})

# 8. Give account no and amount of depositor, whose account no is equals to 106.  
db.DEPOSIT.find({ACTNO : 106},{ACTNO:1 , AMOUNT:1 , _id:0})

# 9. Give name of borrowers having amount greater than 5000.
db.BORROW.find({AMOUNT : {$gt : 5000}})

# 10.  Give name of customers who opened account after date '1-12-96'. 
db.DEPOSIT.find({ADATE : {$gt : '1-12-96'}})

#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part B: 

# 11.  Display name of customers whose account no is less than 105. 
db.DEPOSIT.find({ACTNO : {$lt : 105}},{_id:0,CNAME:1})

# 12.  Display name of customer who belongs to either ‘NAGPUR’ Or ‘DELHI’. 
db.CUSTOMERS.find({CITY : {$in :['NAGPUR','DELHI']}},{_id:0,CNAME:1})

# 13.  Display name of customers with branch whose amount is greater than 4000 and account no is less than 105.
db.DEPOSIT.find({$and : [{ACTNO : {$lt : 105}},{AMOUNT : {$gt : 4000}}]},{_id:0,CNAME:1,BNAME:1})

# 14. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000.
db.BORROW.find({$and : [{AMOUNT : {$gte : 3000}},{AMOUNT : {$lte : 8000}}]})

# 15.  Find all depositors who do not belongs to ‘ANDHERI’ branch.
db.DEPOSIT.find({BNAME : {$not : 'ANDHERI'}})

# 16.  Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G.ROAD’ and Account No is less than 104. 
db.DEPOSIT.find({$and : [{BNAME : {$in : ['AJNI','KAROLBAGH','M.G.ROAD']}},{ACTNO : {$lt : 104}}]},{_id:0,ACTNO:1,CNAME:1,AMOUNT:1})

# 17.  Display all the details of first five customers.
db.CUSTOMERS.find().limit(5)

# 18.  Display all the details of first three depositors whose amount is greater than 1000.
db.DEPOSIT.find({AMOUNT : {$gt : 1000}}).limit(3)

# 19.  Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’. 
db.BORROW.find({BNAME : {$nin : ['ANDHERI']}},{_id:0,LOANNO:1,CNAME:1}).limit(5)

# 20.  Retrieve all unique cities using DISTINCT. (Use Customers collection) 
db.CUSTOMERS.find()

#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part C: 

# 21.  Retrieve all unique branches using DISTINCT. (Use Branch collection) 

# 22.  Retrieve all the records of customer table as per their city name in ascending order. 
db.CUSTOMERS.find().sort({CITY:1})

# 23.  Retrieve all the records of deposit table as per their amount column in descending order. 
db.DEPOSIT.find().sort({AMOUNT:-1})

# 24.  Update deposit amount of all customers from 3000 to 5000. 
db.DEPOSIT.updateMany({AMOUNT : {$eq : 3000}},{$set : {AMOUNT : 5000}})

# 25.  Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow collection)  
db.BORROW.updateOne({CNAME : {$eq : 'ANIL'}},{$set : {BNAME : 'C.G. ROAD'}})

# 26.  Update Account No of SANDIP to 111 & Amount to 5000.  
db.BORROW.updateOne({CNAME : {$eq : 'SANDIP'}},{$set : {ACTNO : 111, AMOUNT : 5000}})

# 27.  Give 10% Increment in Loan Amount.
db.BORROW.updateMany({},{$set : {AMOUNT : (AMOUNT+(AMOUNT/10))}})

# 28.  Update deposit amount of all depositors to 5000 whose account no between 103 & 107. 
db.DEPOSIT.updateMany({})

# 29.  Update amount of loan no 321 to NULL. 
# 30.  Display the name of borrowers whose amount is NULL.



db.Student.insertMany([
    {'RollNo' : 101, 'Name' : 'ABC', 'Branch' : 'CE', 'Failed_Subject' : {'Sub1' : 'DBMS', 'Sub2' : 'DS'}},
    {'RollNo' : 102, 'Name' : 'DEF', 'Branch' : 'ME', 'Failed_Subject' : 'DM'},
    {'RollNo' : 103, 'Name' : 'GHI', 'Branch' : 'IT', 'Failed_Subject' : 'DS'},
    {'RollNo' : 104, 'Name' : 'JKL', 'Branch' : 'CE', 'Failed_Subject' : 'OOPJ'}
])


db.Student.find({},{_id:0 , Name:1 , Failed_Subject:1})

db.Student.find({$or : [{Failed_Subject : 'DS'},{'Failed_Subject.Sub2' : 'DS'}]})

db.Student.find({$and : [{Branch : 'ME'},{$or : [{Failed_Subject : 'EG'},{'Failed_Subject.Sub1' : 'EG'}]}]})

db.Student.updateOne({RollNo : 103},{$set : {'Failed_Subject' : {'Sub1' : 'DS', 'Sub2' : 'CN'}}})

db.Student.updateOne({RollNo : 105},{$set : {'Failed_Subject' : 'NaN'}})



db.Employee.insertMany([
    {'EID' : 'E001', 'Name' : 'ABC' , 'Salary' : 30000 , 'Address' : {'Add1' : 'qwert', 'Add2' : 'hkgiyg', 'Add3' : 'feoikd', 'Pincode' : 360002, 'City' : 'Rajkot'}},
    {'EID' : 'E002', 'Name' : 'ABC' , 'Salary' : 30000 , 'Address' : {'Add1' : 'qwert', 'Add2' : 'hkgiyg', 'Add3' : 'feoikd', 'Pincode' : 360004, 'City' : 'Morbi'}},
    {'EID' : 'E003', 'Name' : 'ABC' , 'Salary' : 30000 , 'Address' : {'Add1' : 'qwert', 'Add2' : 'hkgiyg', 'Add3' : 'feoikd', 'Pincode' : 360006, 'City' : 'Rajkot'}},
    {'EID' : 'E004', 'Name' : 'ABC' , 'Salary' : 30000 , 'Address' : {'Add1' : 'qwert', 'Add2' : 'hkgiyg', 'Add3' : 'feoikd', 'Pincode' : 360001, 'City' : 'Morbi'}},
    {'EID' : 'E005', 'Name' : 'ABC' , 'Salary' : 30000 , 'Address' : {'Add1' : 'qwert', 'Add2' : 'hkgiyg', 'Add3' : 'feoikd', 'Pincode' : 360003, 'City' : 'Chandighadh'}}
])


db.Employee.find({'Address.City' : 'Morbi'})

db.Employee.find({'Address.Pincode' : 360004})

db.Employee.updateOne({EID : 'E005'},{$set : {'Address.Add1' : 'pguoj', 'Adderss.Add2' : 'kuyt6d', 'Address.Add3' : 'asytd'}})

db.Employee.updateMany({},{ "$set": { "date": new Date() }})

db.Employee.updateMany({},{$unset : {'Address.Add3':''}})

db.Employee.updateMany({},{$rename : {'Address.Add1' : 'StreetName','Address.Add2' : 'Areaname'}})

db.Employee.deleteMany({'Address.City' : 'Chandighadh'})

