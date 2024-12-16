const cp = require("child_process")

cp.exec("echo 'hello word!'",(err,stdout,stdin)=>{
    console.log(stdout);
})