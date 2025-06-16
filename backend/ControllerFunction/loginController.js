const bcrypt=require("bcrypt");
const jwt=require("jsonwebtoken");
const Admin = require("../config/database");
const db = require("../config/database");
const {  collection,addDoc ,getDocs } =require( 'firebase/firestore/lite');
const adminModel = require("../models/model");
const loginController=async(req,res)=>{
      res.clearCookie('token');
      try {
        const{email,password}=req.body;
        if(!email||!password){
           
            res.redirect("http://localhost:1000/user/login")
        }
        // check for correct username and password  ---> hashpassword to be fetched from the database
         let admin= await adminModel.findOne({email:email});
      
            
       
          console.log(admin);
        
        if(admin==null){
         res.redirect("http://localhost:1000/user/login")
        }else{
        
        const check=bcrypt.compare(password,admin.password);
        if(!check){
            
            res.redirect("http://localhost:1000/user/login")
        }
       const token=jwt.sign({
        userId:admin.id
       },"pushkaristhebest"); //JWT_SECERETURI NOT YET CREATED
       res.cookie('token',token,{expire: 86400000 + Date.now()});
       res.redirect("http://localhost:1000/user/view");
    }} catch (error) {
        console.log(error)
        res.json({
            success:false,
            Message:error.Message
        })
    }
} 
module.exports=loginController