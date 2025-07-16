const bcrypt=require("bcrypt");

const {addData} = require("../config/database");
const {uuid}=require("uuidv4");

  /// not to be used , made just for checking purpose
const createpassword=async(req,res)=>{
    try {
        
        const{email,password}=req.body
        if(!email||!password){
            res.send(`${alert("Invalid response")}`)
        }

        const hashpassword= await bcrypt.hash(password,10);
        try {
          id=uuid()
          const data={
              id,
              email:email,
              password:hashpassword
          }
            addData("admin",data, id )
      
         console.log(newadmin)
          


  
    } catch (e) {
  console.error("Error adding document: ", e);
}
       
    } catch (error) {
        console.log(error)
    }
}
module.exports=createpassword;