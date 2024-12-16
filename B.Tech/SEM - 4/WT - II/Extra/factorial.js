const prompt = require('prompt-sync')();

var n=prompt("Enter n : "),fact = 1;


for(var i=n; i>0 ; i--){
    fact *= i
}

console.log(fact)