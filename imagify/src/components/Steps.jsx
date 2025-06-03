import React from 'react'
import { stepsData } from '../assets/assets'
import {motion} from "motion/react"
const Steps = () => {
  return (
    <motion.div className='flex flex-col items-center justify-center my-36'
     initial={{opacity:0.2,y:100}}
            whileInView={{opacity:1,y:0}}
            transition={{duration:0.8}}>
    
        <h1 className='text-3xl sm:text-4xl font-semibold mb-2'>How it Works</h1>
        < p className='text-slate-500 mb-8'>Transform Words into Stunning images</p>
        <div className='space-y-4 w-full max-w-3xl text-sm '>
           {stepsData.map((item,idx)=>(
            <motion.div className='flex gap-4 px-5 py-8 bg-white/20 shadow-md rounded-md border cursor-pointer hover:scale-[1.02] transition-all duration-200' key={idx}
            >
     
                <img width={40} src={item.icon} alt="" />
                <div>
                    <p className='text-xl font-medium'>{item.title}</p>
                    <p className='text-gray-500'>{item.description}</p>
                </div>
            </motion.div>
           ))}
        </div>
    </motion.div>
  )
}

export default Steps