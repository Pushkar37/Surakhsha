const jwt=require('jsonwebtoken');
const {  getDatawithId } = require('../config/database');

const changepassword=async(req,res)=>{
    
        const{token}=req.cookies;
        
        const DecodeToken=jwt.verify(token,process.env.JWT_SECRET);
       
        const userId=DecodeToken.userId;
       const data= await getDatawithId("admin",userId);

        res.render("changepassword.ejs",{email:data.email ,id:userId});
       
   
}
module.exports=changepassword;
