const {getDatawithId}=require("../config/database");
const viewReport=async(req,res)=>{
const {id}=req.params;

let reportDetails= await getDatawithId("reports",id);


res.render("Reports.ejs",{reportDetails});
}
module.exports=viewReport;