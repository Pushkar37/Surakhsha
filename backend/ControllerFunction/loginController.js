const bcrypt=require("bcrypt");
const jwt=require("jsonwebtoken");
const {getData} = require("../config/database");


const loginController=async(req,res)=>{
      res.clearCookie('token');
      // this is databse code kindly change it to firebase and make sure admin is a single object with all the required feilds present in it only 
      try {
        const{email,password}=req.body;
        if(!email||!password){
           
            res.redirect("/user/login")
        }
        
        const dataall=await getData("admin");
        let admin=null;
        dataall.forEach(e => {
            if(e.email==email){
                admin=e
            }
        });

      
            
       
          console.log(admin);
        
        if(admin==null){
         res.redirect("/user/login")
        }else{
        
        const check= await bcrypt.compare(password,admin.password);
        if(!check){
            
            res.redirect("/user/login")
        }
       const token=jwt.sign({
        userId:admin.id
       },process.env.JWT_SECRET); //JWT_SECERETURI NOT YET CREATED
       res.cookie('token',token,{expire: 86400000 + Date.now()});
       res.redirect("/user/view");
    }} catch (error) {
        console.log(error)
        res.json({
            success:false,
            Message:error.Message
        })
    }
} 
module.exports=loginController
