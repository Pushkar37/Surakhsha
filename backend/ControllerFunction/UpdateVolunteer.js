const { updateData } = require('../config/database');

const updateVolunteer = async (req, res) => {
  try {
    const { id } = req.params;
    const updates = req.body;

    if (!id || !updates) {
    return res.status(400).json({ message: "Missing volunteer ID or update data" });
    }

    await updateData('volunteers', id, updates);

    // ✅ Either respond with success...
    // return res.status(200).json({ message: 'Volunteer updated successfully' });

    // ✅ ...or redirect to another page (like a list of volunteers)
    res.redirect("http://localhost:1000/user/volunteers");

  } catch (error) {
    console.error("Error updating volunteer:", error);
    return res.status(500).json({ message: 'Failed to update volunteer' });
  }
};

module.exports = updateVolunteer;
