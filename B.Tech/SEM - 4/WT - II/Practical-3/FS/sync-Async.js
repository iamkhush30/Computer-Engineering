const fs = require("fs")

const abcFileAsync = fs.readFile("abc.txt","utf-8",(err,data)=>{
    console.log(data);
})
console.log("hello world?!")

// --------------------------------------------- //

const abcFileSync = fs.readFileSync("abc.txt","utf-8")

console.log(abcFileSync)

console.log("hello world?!")
