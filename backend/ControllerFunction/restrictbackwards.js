
const restrict=(req,res,next)=>{
    res.clearCookie('token');
    next();
}
module.exports=restrict