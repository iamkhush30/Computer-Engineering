const prompt = require('prompt-sync')();

var n=prompt("Enter n : "), temp1 = n,rev = 0;

while(temp1 > 0){
    var digit = temp1 % 10;
    rev = (rev * 10) + digit;
    console.log(temp1)
    temp1 = temp1 /~ 10
    console.log(temp1)
}

if(rev == n)
    console.log(n," is palindrome number")
else 
    console.log(n," ",rev," is not palindrome number") 