
const { uuid } = require("uuidv4");
const {addData}=require("../config/database")

const addVolunteer= async(req,res)=>{
    try {
        
        const{name,number}=req.body
        console.log(name)
        console.log(number)
       if(!name||!number){
        res.redirect("volunteers");
       }else{
        //database query for adding volunteer to database.
        try {
            const id=uuid();
            const data={
                id,
                name:name,
                number:number
            }
         addData("Volunteers",data,id).then( res.redirect("http:/localhost:1000/user/volunteers"));
           
   } catch (error) {
       console.log(error);
       
    }

    
       }
} catch (error) {
    console.log(error);
}
}
module.exports=addVolunteer