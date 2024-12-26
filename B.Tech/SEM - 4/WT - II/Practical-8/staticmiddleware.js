const express = require("express")
const app = express();

const staticmiddleware = (req,res,next)=>{
    console.log("checking in static middleware");
    next();
}

app.get("/print", staticmiddleware,
    (req,res)=>{
        console.log("Hello World!");
        res.send();
    }
)

app.listen(3000,()=>{
    console.log("Server strated at 3000");
});