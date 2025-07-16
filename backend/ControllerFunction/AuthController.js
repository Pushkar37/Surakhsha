const jwt=require('jsonwebtoken');

const AuthController=(req,res,next)=>{
    try {
        const{token}=req.cookies;
        if(!token){
         
            return res.redirect("/user/login")
         
        }
        const DecodeToken=jwt.verify(token,process.env.JWT_SECRET);
        if(DecodeToken){
          
           next();
        }
        else{
             
            res.redirect("/user/login")
           
        }
    } catch (error) {
        console.log(error);
  
    }
}
module.exports=AuthController;
