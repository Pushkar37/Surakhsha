const{updateData}=require("../config/database")
const resolveSos=async(req,res)=>{
const {id}=req.params;
const dataupdate={
    resolved:true
}
updateData('sos',id,dataupdate);
res.redirect("/user/view");
}
module.exports=resolveSos;