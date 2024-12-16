const fs = require("fs");


const studentDetail = [
    {"id" : 101, "name" : "abc", "enrollno" : 123456789, "contect" : 1234567980, "dept" : "CE", "spi" : 8.78},
    {"id" : 102, "name" : "mnp", "enrollno" : 789456123, "contect" : 9876543120, "dept" : "CE", "spi" : 8.55},
    {"id" : 103, "name" : "xyz", "enrollno" : 456791325, "contect" : 5127894565, "dept" : "CE", "spi" : 8.18}
]

fs.writeFileSync("studentdetail.txt",JSON.stringify(studentDetail),(err,data)=>{
    if(err) throw err;
    else console.log(data);
})