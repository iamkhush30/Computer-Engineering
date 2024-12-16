const fs = require("fs")

const studentData = fs.readFileSync("studentDetail.txt","UTF-8",(err)=>{if(err) throw err;})

const studentarr = JSON.parse(studentData)

for(i in studentarr){
    if(studentarr[i].spi < 5){
        console.log(studentarr[i])
    }
}
