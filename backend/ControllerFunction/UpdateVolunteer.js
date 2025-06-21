
const { updateData } = require('../config/database');

const updateVolunteer = async (req, res) => {
  try {
    const { id } = req.params;
    const updates = req.body;

    if (!id || !updates) return res.status(400).json({ message: "Missing volunteer ID or update data" });

    await updateData('volunteers', id, updates);
    res.status(200).json({ message: 'Volunteer updated successfully' });
  } catch (error) {
    console.error("Error updating volunteer:", error);
    res.status(500).json({ message: 'Failed to update volunteer' });
  }
};

module.exports = updateVolunteer;

//const updateVolunteer=(req,res)=>{

//}

//module.exports=updateVolunteer;