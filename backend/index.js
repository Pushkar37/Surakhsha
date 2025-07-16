//imported all dependencies
const express = require('express')
const cors =require( 'cors')
const dotenv= require('dotenv') 
const userRouter=require("./routes/userRoutes")
const http=require('http')
const path=require('path')
const cookie=require('cookie-parser');
const methodOverride = require('method-override')



const port= process.env.PORT || 1000;
const app= express();
const server=http.createServer(app);
dotenv.config();
app.set('view engine','ejs')
app.set('views',path.join(__dirname,'public','views'));



// //use of middleware for easier facillation of coding
app.use(express.static(path.join(__dirname,'public')));
app.use(express.static('public'));
app.use(cors());
app.use(express.urlencoded());
app.use(express.json());
app.use(express.static('public'));
app.use(cookie());
app.use(methodOverride('_method'))

//routes 
 app.use("/user",userRouter);
app.get("/",(req,res)=> res.send("API Working"));
server.listen(port,()=>{
    console.log("Server started")
})