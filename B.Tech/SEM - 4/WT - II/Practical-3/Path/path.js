const path = require("path")

console.log("path join Function : ");
console.log(path.join('abc','xyz'),"\n");

console.log("Dirname Function : ");
console.log(path.dirname("/abc/xyz.txt"),"\n");

console.log("Ectname Function : ");
console.log(path.extname("xyz.txt"),"\n");

console.log("BaseName Function : ");
console.log(path.basename("/abc/xyz.txt",".txt"),"\n");

console.log("Normalize Function : ");
console.log(path.normalize("C:\\Users\\student\\Desktop\\Gaurav\\Practical-3\\Path"));