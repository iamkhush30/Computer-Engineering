const fs = require("fs")

const fileContent = fs.readFileSync("abc.txt",(err)=>{
    if(err) throw err
})

fs.writeFileSync("xyz.txt",fileContent,(err,data)=>{
    if(err) throw err;
    else console.log(data);
})