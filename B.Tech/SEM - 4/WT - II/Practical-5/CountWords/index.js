const fs = require("fs")

const fileContent = fs.readFileSync("content.txt",(err)=>{if(err) throw err;}).toString()

var count = 0

for(i in fileContent){
    if(fileContent.charAt(i)==' ') count++;
}

console.log("Word Count : ",++count);
