let arr = [3,65,213,65,98,43]

console.log("Default Array : ",arr);

arr.push(67);

console.log("arr.push(67) : ",arr);

arr.pop();

console.log("arr.pop() : ",arr);

arr.shift(3);

console.log("arr.shift(0) : ",arr);

arr.unshift(0);

console.log("arr.unshift(0) : ",arr);

arr.splice(2,3,1);

console.log("arr.splice(2,3,1) : ",arr);

arr.sort();

console.log("arr.sort() : ",arr)
