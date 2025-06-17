const {getData}=require("../config/database");
const getVolunteer=async(req,res)=>{
  try {
      const alldata=await getData("Volunteers");
  
      res.render("addvolunteers.ejs",{alldata})
     
  } catch (error) {
    console.log(error)
  }

}

module.exports=getVolunteer