const events = require("events")

class event extends events {}

const eventEmmiter = new event();

eventEmmiter.on("trigger",()=>{
    console.log("Event triggered")
})

setTimeout(()=>{
    eventEmmiter.emit("trigger")
},1000)