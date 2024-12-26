const express = require("express")
const app = express();

app.get("/print",
    (req,res,next)=>{
        console.log("Hello");
        next();
    },
    (req,res)=>{
        console.log("World");
        res.send();
    }

)

app.listen(3000,()=>{
    console.log("Server strated at 3000");
});