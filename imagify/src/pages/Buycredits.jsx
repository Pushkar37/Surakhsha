import React, { useContext } from 'react'
import { assets, plans, } from '../assets/assets'
import { AppContext } from '../context/AppContext'
import {motion} from 'motion/react';

const Buycredits = () => {
  const {user}=useContext(AppContext);
  return (
    <motion.div className='flex flex-col items-center justify-between '
    initial={{opacity:0.2,y:100}}
            whileInView={{opacity:1,y:0}}
            transition={{duration:0.8}}>
      <p className='text-sm bg-white border-1 shadow-md rounded-full py-3 px-10 mt-10 '>Our plans</p>
      <h1 className='text:3xl sm:text-4xl py-4 px-4 mt-10 font-semibold'>
          Choose a Plan
      </h1>
      <div className=' flex mt-32 gap-6 sm:gap-16 justify-evenly w-full'>
              {plans.map((e,idx)=>(
              <div className=' flex flex-col  gap-4 bg-white border-1 rounded-md cursor-pointer transition-all duration-300 hover:shadow-xl hover:scale-105 shadow-lg px-2 w-[250px] h-[250px]'>
                <img className='w-10'  src={assets.logo_icon} alt="" />
                <h2 className='font-semibold text-lg'>{e.id}</h2>
                <p className='text-sm'>{e.desc}</p>
                <p><span className='text-3xl'>${e.price}</span>/{e.credits} credits</p>
                <button className='bg-black text-white rounded-full py-2 px-2'>{user?"Buy Credits":"Get Started"}</button>
              </div>
              ))}
      </div>
    </motion.div>
  )
}

export default Buycredits