const prompt = require('prompt-sync')();

var n=prompt("Enter n : "),sum = 0;


for(var i=1; i<n ; i++){
    if(n%i==0){
        sum += i
    }
}

if(sum==n) 
    console.log(n," is perfect number")
else 
    console.log(n," is not perfect number")
