const {getData}=require("../config/database");
const historyController=async(req,res)=>{
  const Report =await getData('reports');
  const SOS =await getData('sos');

  res.render("history_and_analysis.ejs",{Report,SOS});
}
module.exports=historyController;