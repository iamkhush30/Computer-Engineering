const prompt = require('prompt-sync')();

var n=prompt("enter size of array");

let arr= [];
for(let i=0;i<n;i++)
{
    arr[i]=prompt("enter Faculty name:");
}
console.log(arr)