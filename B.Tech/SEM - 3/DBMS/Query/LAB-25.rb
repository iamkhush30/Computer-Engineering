db.STUDENT.insertMany([
    {'Rno' : 101, 'Name' : 'Raju', 'Branch' : 'CE'},
    {'Rno' : 102, 'Name' : 'Amit', 'Branch' : 'CE'},
    {'Rno' : 103, 'Name' : 'Sanjay', 'Branch' : 'ME'},
    {'Rno' : 104, 'Name' : 'Neha', 'Branch' : 'EC'},
    {'Rno' : 105, 'Name' : 'Meera', 'Branch' : 'EE'},
    {'Rno' : 106, 'Name' : 'Mahesh', 'Branch' : 'ME'}
])

db.RESULT.insertMany([
    {'Rno' : 101, 'SPI' : 8.8},
    {'Rno' : 102, 'SPI' : 9.2},
    {'Rno' : 103, 'SPI' : 7.6},
    {'Rno' : 104, 'SPI' : 8.2},
    {'Rno' : 105, 'SPI' : 7.0},
    {'Rno' : 107, 'SPI' : 8.9}
])

db.EMPLOYEE.insertMany([
    {'EmployeeNo' : 'E01', 'Name' : 'Tarun', 'ManagerNo' : 'NULL'},
    {'EmployeeNo' : 'E02', 'Name' : 'Rohan', 'ManagerNo' : 'E02'},
    {'EmployeeNo' : 'E03', 'Name' : 'Priya', 'ManagerNo' : 'E01'},
    {'EmployeeNo' : 'E04', 'Name' : 'Milan', 'ManagerNo' : 'E03'},
    {'EmployeeNo' : 'E05', 'Name' : 'Jay', 'ManagerNo' : 'E01'},
    {'EmployeeNo' : 'E06', 'Name' : 'Anjana', 'ManagerNo' : 'E04'}
])


#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part A:
# 1. Combine information from student and result table using cross join or Cartesian product.
db.STUDENT.aggregate([
    {$lookup : {
        from : 'RESULT',
        localField : 'Rno',
        foreignField : 'Rno',
        as : 'StudentResult'
    }},
    {$unwind : {path : "$StudentResult"}}
])

# 2. Display Rno, Name, Branch and SPI of all students.
db.STUDENT.aggregate([
    {$lookup : {
        from : 'RESULT',
        localField : 'Rno',
        foreignField : 'Rno',
        as : 'StudentResult'
    }},
    {$unwind : {
        path : "$StudentResult"
    }},
    {$project : {_id:0,Rno:1,Name:1,Branch:1,'StudentResult.SPI':1}}
])

# 3. Display Rno, Name, Branch and SPI of CE branch’s student only.
db.STUDENT.aggregate([
    {$match : {Branch : 'CE'}},
    {$lookup : {
        from : 'RESULT',
        localField : 'Rno',
        foreignField : 'Rno',
        as : 'StudentResult'
    }},
    {$unwind : {
        path : "$StudentResult"
    }},
    {$project : {_id:0,Rno:1,Name:1,Branch:1,'StudentResult.SPI':1}}
])

# 4. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
db.STUDENT.aggregate([
    {$match : {Branch : {$nin : ['EC']}}},
    {$lookup : {
        from : 'RESULT',
        localField : 'Rno',
        foreignField : 'Rno',
        as : 'StudentResult'
    }},
    {$unwind : {
        path : "$StudentResult"
    }},
    {$project : {_id:0,Rno:1,Name:1,Branch:1,'StudentResult.SPI':1}}
])

# 5. Display average result of each branch.
db.STUDENT.aggregate([
    {$lookup : {
        from : 'RESULT',
        localField : 'Rno',
        foreignField : 'Rno',
        as : 'StudentResult'
    }},
    {$unwind : {path : "$StudentResult"}},
    {$group : {_id : "$Branch" , avgRusult: {$avg : '$StudentResult.SPI'}}}
])

# 6. Display average result of each branch and sort them in ascending order by SPI.
db.STUDENT.aggregate([
    {$lookup : {
        from : 'RESULT',
        localField : 'Rno',
        foreignField : 'Rno',
        as : 'StudentResult'
    }},
    {$unwind : {path : "$StudentResult"}},
    {$group : {_id : "$Branch" , avgRusult: {$avg : '$StudentResult.SPI'}}},
    {$sort : {avgRusult : 1}}
])

# 7. Display average result of CE and ME branch.
db.STUDENT.aggregate([
    {$match : {Branch : {$in : ['CE','ME']}}},
    {$lookup : {
        from : 'RESULT',
        localField : 'Rno',
        foreignField : 'Rno',
        as : 'StudentResult'
    }},
    {$unwind : {path : "$StudentResult"}},
    {$group : {_id : "$Branch" , avgRusult: {$avg : '$StudentResult.SPI'}}}
])

# 8. Perform the left outer join on Student and Result tables.
db.STUDENT.aggregate([
    {$lookup: {
        from: 'RESULT',
        localField: 'Rno',
        foreignField: 'Rno',
        as: 'StudentResult'
    }},
    {$project: {_id: 0,Rno: 1,Name: 1,Branch: 1,StudentResult: 1}}
])

# 9. Perform the right outer join on Student and Result tables.
db.RESULT.aggregate([
    {$lookup: {
        from: 'STUDENT',
        localField: 'Rno',
        foreignField: 'Rno',
        as: 'StudentData'
    }},
    {$project: {_id: 0,Rno: 1,'StudentData.Name': 1,'StudentData.Branch': 1,SPI: 1}}
])

# 10.  Perform the full outer join on Student and Result tables.
db.RESULT.aggregate([
    {$lookup: {
        from: 'STUDENT',
        localField: 'Rno',
        foreignField: 'Rno',
        as: 'StudentData'
    }},
    {$lookup: {
        from: 'STUDENT',
        localField: 'Rno',
        foreignField: 'Rno',
        as: 'StudentResult'
    }},
    {$project: {_id: 0,Rno: 1,Name: 1,Branch: 1,StudentResult: 1}}
])
db.STUDENT.aggregate([
    {$lookup: {
        from: 'RESULT',
        localField: 'Rno',
        foreignField: 'Rno',
        as: 'StudentResult'
    }},
    {$project: {_id: 0,Rno: 1,Name: 1,Branch: 1,StudentResult: 1,StudentData:1}}
])

# 11.  Retrieve the names of employee along with their manager name from the Employee table.
db.EMPLOYEE.aggregate([
    {$lookup : {
        from : 'EMPLOYEE',
        localField : 'ManagerNo',
        foreignField : 'EmployeeNo',
        as : 'EmployeeManager'
    }},
    {$unwind : {path : "$EmployeeManager"}},
    {$project : {_id:0,Name:1,ManagerName : '$EmployeeManager.Name'}}
])


#-----------------------------------------------------------------------------------------------------------------------------------------#

db.PER