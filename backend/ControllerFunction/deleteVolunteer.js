
const deleteController=async(req,res)=>{
 const{delete_id}=req.body;
 console.log(delete_id);
 res.redirect("/user/volunteers")
}
module.exports=deleteController