const prompt = require('prompt-sync')();

var n=prompt("Enter n : "),sum = 0;


for(var i=0; i<n ; i++){
    sum += (i*i)
}

console.log(sum)