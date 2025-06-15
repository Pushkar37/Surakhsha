const jwt=require('jsonwebtoken');

const ViewController=(req,res)=>{
    try {
        const{token}=req.cookies;
        if(!token){
         
            res.redirect("http://localhost:1000/user/login")
         
        }
        const DecodeToken=jwt.verify(token,"pushkaristhebest");
        if(DecodeToken){
           res.render("homepage.ejs");
        }
        else{
             
            res.redirect("http://localhost:1000/user/login")
           
        }
    } catch (error) {
        console.log(error);
  
    }
}
module.exports=ViewController;