const prompt = require('prompt-sync')();

var n=prompt("Enter n : "), flag = true;


for(var i=2; i<n ; i++){
    if(n%i==0){
        flag = false
    }
}

if(flag)
    console.log(n," is prime number")
else 
    console.log(n," is not prime number") 
