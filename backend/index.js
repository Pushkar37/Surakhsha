//imported all dependencies
const express = require('express')
const cors =require( 'cors')
const dotenv= require('dotenv') 
const userRouter=require("./routes/userRoutes")
const http=require('http')
const socketio=require('socket.io');
const path=require('path')
const cookie=require('cookie-parser');
const ConnectToDb=require("./config/database")

const port= process.env.Port || 1000;
const app= express();
const server=http.createServer(app);
dotenv.config();
app.set('view engine','ejs')
app.set('views',path.join(__dirname,'public','views'));

ConnectToDb();
// //use of middleware for easier facillation of coding
app.use(express.static(path.join(__dirname,'public')));
app.use(express.static('public'));
app.use(cors());
app.use(express.urlencoded());
app.use(express.json());
app.use(express.static('public'));
app.use(cookie());
//websocket used for establishing connection
// const io=new socketio(server);
//  io.on("connection",function (socket){
//     socket.on("send-location",function(data){
//         io.emit("recive-location",{id:socket.id,...data});
//     });
//     socket.on("disconnect",function(){
//         io.emit("disconneted",socket.id)
//     })
//  });

//routes 
 app.use("/user",userRouter);
app.get("/",(req,res)=> res.send("API Working"));
server.listen(port,()=>{
    console.log("Server started")
})