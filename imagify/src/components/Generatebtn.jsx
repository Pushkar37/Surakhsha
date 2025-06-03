import React, { useContext } from 'react'
import { assets } from '../assets/assets'
import {motion} from 'motion/react'
import { AppContext } from '../context/AppContext';
import {Navigate,useNavigate}from 'react-router-dom';
 
const Generatebtn = () => {
  const navigate=useNavigate();
    const {user,setShowLogin}=useContext(AppContext);
    const ClickHandler=()=>{
        if(user){
            navigate("/result");
        }
        else{
            setShowLogin(true);
        }
    }
  return (
    <motion.div className='flex flex-col items-center py-4 px-4' initial={{opacity:0.2,y:100}}
            whileInView={{opacity:1,y:0}}
            transition={{duration:0.8}}>
        <h1 className='text-3xl sm:4xl font-semibold mb-8'>See the Magic . Try now</h1>
        <button onClick={ClickHandler} className='bg-black border rounded-full text-white py-3 px-3 flex gap-2 group'>Generate Images 
            <img className='w-5 group-hover:translate-y-2 transition-all duration-300' src={assets.star_group} alt="" /></button>
    </motion.div>
  )
}

export default Generatebtn