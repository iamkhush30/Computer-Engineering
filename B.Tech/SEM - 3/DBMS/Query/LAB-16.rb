use BANK_INFO

db.DEPOSIT.insertMany([
    {'ACTNO' : 101, 'CNAME' : 'ANIL', 'BNAME' : 'VRCE' , 'AMOUNT' : 1000.00, 'ADATE' : '1-3-95'},
    {'ACTNO' : 102, 'CNAME' : 'SUNIL', 'BNAME' : 'AJNI' , 'AMOUNT' : 5000.00, 'ADATE' : '4-1-96'},
    {'ACTNO' : 103, 'CNAME' : 'MEHUL', 'BNAME' : 'KAROLBAGH' , 'AMOUNT' : 3500.00, 'ADATE' : '17-11-95'},
    {'ACTNO' : 104, 'CNAME' : 'MADHURI', 'BNAME' : 'CHANDI' , 'AMOUNT' : 1200.00, 'ADATE' : '17-12-95'},
    {'ACTNO' : 105, 'CNAME' : 'PRMOD', 'BNAME' : 'M.G. ROAD' , 'AMOUNT' : 3000.00, 'ADATE' : '27-3-96'},
    {'ACTNO' : 106, 'CNAME' : 'SANDIP', 'BNAME' : 'ANDHERI' , 'AMOUNT' : 2000.00, 'ADATE' : '31-3-96'},
    {'ACTNO' : 107, 'CNAME' : 'SHIVANI', 'BNAME' : 'VIRAR' , 'AMOUNT' : 1000.00, 'ADATE' : '5-9-95'},
    {'ACTNO' : 108, 'CNAME' : 'KRANTI', 'BNAME' : 'NEHRU PLACE' , 'AMOUNT' : 5000.00, 'ADATE' : '2-7-95'}
])


#-----------------------------------------------------------------------------------------------------------------------------------------#


# PART - A :
# 1. Retrieve/Display every document of Deposit collection.
db.DEPOSIT.find()

# 2. Retrieve/Display every document of Deposit collection. (Use: pretty())
db.DEPOSIT.find().pretty()

# 3. Display only one document of Deposit collection. (Use: findOne())
db.DEPOSIT.findOne()

# 4. Insert following document to Deposit collection. (Use: insertOne())
#     109 KIRTI VIRAR 3000.00 3-5-97
db.DEPOSIT.insertOne({
    'ACTNO' : 109, 'CNAME' : 'KIRTI', 'BNAME' : 'VIRAR' , 'AMOUNT' : 3000.00, 'ADATE' : '3-5-97'
})

#5. Insert following documents to your collection. (Use: insertMany())
#     110 MITALI ANDHERI 4500.00 4-9-95
#     111 RAJIV NEHRU PLACE 7000.00 2-10-98
db.DEPOSIT.insertMany([
    {'ACTNO' : 110, 'CNAME' : 'MITALI', 'BNAME' : 'ANDHERI' , 'AMOUNT' : 4500.00, 'ADATE' : '4-9-95'},
    {'ACTNO' : 111, 'CNAME' : 'RAJIV', 'BNAME' : 'NEHRU PLACE' , 'AMOUNT' : 7000.00, 'ADATE' : '2-10-98'},
])


# 6. Display documents with CNAME, BNAME and AMOUNT fields.
db.DEPOSIT.find({},{'CNAME' : 1, 'BNAME' : 1, 'AMOUNT' : 1, _id : 0})

# 7. Display every document of Deposit collection on ascending order by CNAME.
db.DEPOSIT.find().sort({'CNAME' : 1})

# 8. Display every document of Deposit collection on descending order by BNAME.
db.DEPOSIT.find().sort({'BNAME' : -1})

# 9. Display every document of Deposit collection on ascending order by ACTNO and descending order by AMOUNT.
db.DEPOSIT.find().sort({'ACTNO' : 1 , 'AMOUNT' : -1})

# 10. Display only two documents of Deposit collection.
db.DEPOSIT.find().limit(2)

# 11. Display 3rd document of Deposit collection.
db.DEPOSIT.find().skip(2).limit(1)

# 12. Display 6th and 7th documents of Deposit collection.
db.DEPOSIT.find().skip(5).limit(2)

# 13. Display the count of documents in Deposit collection.
db.DEPOSIT.countDocument()

# 14. Display only first documents of Deposit collection.
db.DEPOSIT.find().limit(1)

# 15. Display every document of Deposit collection on descending order by AMOUNT.
db.DEPOSIT.find().sort({'AMOUNT' : -1})


#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part - B :
# 1. Insert following document to Deposit collection. (Use: insertOne())
#     112 MANISH ANDHERI 8000.00 9-5-98
db.DEPOSIT.insertOne({
    'ACTNO' : 112, 'CNAME' : 'MANISH', 'BNAME' : 'ANDHERI' , 'AMOUNT' : 8000.00, 'ADATE' : '9-5-98'
})

# 2. Display 9th document of Deposit collection.
db.DEPOSIT.find().skip(7).limit(1)

# 3. Display 11th and 12th documents of Deposit collection.
db.DEPOSIT.find().skip(10).limit(2)


#-----------------------------------------------------------------------------------------------------------------------------------------#


# Part - C :
# 1. Display every document of Deposit collection on ascending order by AMOUNT and descending order by BNAME.
db.DEPOSIT.find().sort({'AMOUNT' : 1 , 'BNAME' : -1})

# 2. Display only five documents of Deposit collection.
db.DEPOSIT.find().limit(5)

# 3. Delete all the documents of collection Deposit.


# 4. Drop BANK_INFO database.