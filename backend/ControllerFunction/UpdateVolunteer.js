// controllers/updateVolunteer.js

const { db } = require("../config/database");

const updateVolunteer = async (req, res) => {
  const { id } = req.body;
  const { name, number } = req.body;

  try {
    const docRef = db.collection("Volunteers").doc(id);

    const doc = await docRef.get();
    if (!doc.exists) {
      return res.status(404).json({ message: "Volunteer not found" });
    }

    const updateData = {};
    if (name) updateData.name = name;
    if (number) updateData.number = number;

    if (Object.keys(updateData).length === 0) {
      return res.status(400).json({ message: "No update fields provided" });
    }

    await docRef.update(updateData);
    res.status(200).json({ message: "Volunteer updated successfully" });
  } catch (error) {
    console.error("Error updating volunteer:", error);
    res.status(500).json({ message: "Failed to update volunteer" });
  }
};

module.exports = updateVolunteer;