// controllers/updateVolunteer.js
const { updateData } = require("../config/database");

const updateVolunteer = async (req, res) => {
  try {
    const { id, name, number } = req.body;

    const updated = {};
    if (name) updated.name = name;
    if (number) updated.number = number;

    await updateData("volunteers", id, updated);
    console.log("Data updated:", updated);
    res.status(200).redirect("/user/volunteers");
   
  } catch (error) {
    console.error("Update failed:", error);
    res.status(500).redirect("/user/volunteers");
  }
};

module.exports = updateVolunteer;