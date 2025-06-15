const jwt=require('jsonwebtoken');

const ViewController=(req,res)=>{
    try {
        const{token}=req.cookies;
        if(!token){
            alert("UNAUTHORIZED");
            res.redirect("https://localhost:1000/user/login")
        }
        const DecodeToken=jwt.verify(token,JWT_SECRETURI);
        if(DecodeToken){
           res.render("homepage.ejs");
        }
        else{
             alert("UNAUTHORIZED");
            res.redirect("https://localhost:1000/user/login")
        }
    } catch (error) {
        console.log(error);
  
    }
}
module.exports=ViewController;