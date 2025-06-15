const bcrypt=require("bcrypt");
const adminModel=require("../models/model")



const createpassword=async(req,res)=>{
    try {
        
        const{email,password}=req.body
        if(!email||!password){
            res.send(`${alert("Invalid response")}`)
        }

        const hashpassword= await bcrypt.hash(password,10);
        try {
            
        const admin=new adminModel({email:email,password:hashpassword})
        const newadmin=await admin.save();
         
         console.log(newadmin)
          


  
    } catch (e) {
  console.error("Error adding document: ", e);
}
       
    } catch (error) {
        console.log(error)
    }
}
module.exports=createpassword;