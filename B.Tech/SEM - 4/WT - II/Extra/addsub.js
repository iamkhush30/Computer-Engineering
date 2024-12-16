const prompt = require('prompt-sync')();

var n=prompt("Enter n : "),sum = 0;

for(var i=1; i<n ; i+=3){
    if(i%2==0){
        sum -= i
    }
    else{
        sum += i
    }
}
console.log(sum)