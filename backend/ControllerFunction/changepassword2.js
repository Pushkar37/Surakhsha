const { updateData } = require("../config/database");
 const bcrypt=require("bcrypt");
const changepassword2=async(req,res)=>{
    try {
        
        const {userId,password}=req.body;
        const updated = {};
               const hashpassword= await bcrypt.hash(password,10);
            if (password) updated.password = hashpassword;
        await updateData('admin',userId, updated)
          res.status(200).redirect("/user/view");
    } catch (error) {
        console.log(error)
        res.status(500).redirect("/user/changepassword")
    }
}
module.exports=changepassword2;