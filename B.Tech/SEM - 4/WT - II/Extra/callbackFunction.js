function printSum(ans){
    console.log(ans);
}

function addition(a,b,callback){
    var ans = a+b;
    callback(ans);
}

addition(10,20,printSum)