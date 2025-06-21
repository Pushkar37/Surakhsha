const { db } = require("../config/database");

<<<<<<< Updated upstream
const deleteController=async(req,res)=>{
 const{delete_id}=req.body;
 console.log(delete_id);
 res.redirect("/user/volunteers")
}
module.exports=deleteController
=======
const deleteController = async (req, res) => {
  const { volunteerId } = req.body;

  if (!volunteerId) {
    return res.status(400).json({ error: "Volunteer ID is required" });
  }

  try {
    const volunteerRef = db.collection("volunteers").doc(volunteerId);
    const doc = await volunteerRef.get();

    if (!doc.exists) {
      return res.status(404).json({ error: "Volunteer not found" });
    }

    await volunteerRef.delete();
    return res.status(200).json({ message: "Volunteer deleted successfully" });

  } catch (error) {
    console.error("Error deleting volunteer:", error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

module.exports = deleteController;
>>>>>>> Stashed changes
