const prompt = require('prompt-sync')();

var n=prompt("Enter n : ");


for(var i=1; i<=n ; i++){
    if(n%i==0){
        console.log(i)
    }
}

