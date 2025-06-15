const bcrypt=require("bcrypt");
const jwt=require("jsonwebtoken");
const loginController=(req,res)=>{
      try {
        const{userId,password}=req.body;
        if(!userId||!password){
            alert("Missing details")
            res.redirect("https://localhost:1000/user/login")
        }
        //check for correct username and password  ---> hashpassword to be fetched from the database
        const check=bcrypt.compare(password,hashpassword);
        if(!check){
            alert("Invalid information");
            res.redirect("https://localhost:1000/user/login")
        }
       const token=jwt.sign({
        userId:userId
       },JWT_SECERTURI); //JWT_SECERETURI NOT YET CREATED
       res.cookie('token',token);
       res.redirect("https://localhost:1000/user/view");
    } catch (error) {
        console.log(error)
        res.json({
            success:false,
            Message:error.Message
        })
    }
} 
module.exports=loginController