const mongoose = require("mongoose");

const ConnectToDb=async ()=>{
  await  mongoose.connect("mongodb+srv://pushkarsharma5555:pushkar123@cluster0.ebuioqu.mongodb.net/").then(()=>{
    console.log("Connection Established")
  })
}

module.exports = ConnectToDb;