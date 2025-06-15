const mongoose=require("mongoose");

const AdminSchema=new mongoose.Schema({

    email:{type:String,required:true,unique:true},
    password:{type:String,required:true}
})
const adminModel=new mongoose.model('Admin',AdminSchema);


module.exports=adminModel;