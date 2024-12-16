var arr = [43,67,54,78]

var obj = {
    name : "abc",
    age : 19
}

var [first,,,last] = arr;

console.log("Array : ",arr)
console.log("First element : ",first)
console.log("Last element : ",last)

var {name,age} = obj;

console.log("Object : ",obj)
console.log("Object.name : ",name)
console.log("Object.age : ",age)
