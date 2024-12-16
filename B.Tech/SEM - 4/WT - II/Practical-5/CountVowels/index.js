const fs = require("fs")

const fileContent = fs.readFileSync("content.txt",(err)=>{if(err) throw err;}).toString()

const vowels = ['a','e','i','o','u','A','E','I','O','U']

var count = 0

for(i in fileContent){
    if(vowels.includes(fileContent.charAt(i))) count++;
}

console.log("Vowels Count : ",count);
