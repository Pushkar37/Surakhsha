const { getData } = require("../config/database")

const retriveData=async(req,res)=>{
 const volunteerData=await getData("volunteers");

 res.json({data:volunteerData,
    success:true
    
 });
}
module.exports=retriveData