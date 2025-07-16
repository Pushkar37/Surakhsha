const {getDatawithId}=require("../config/database")
const sosViewer=async(req,res)=>{
 const {id}=req.params;

let sosdetails= await getDatawithId("sos",id);
res.render("SOS.ejs",{sosdetails})
}
module.exports=sosViewer