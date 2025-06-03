import React from 'react'
import { assets, testimonialsData } from '../assets/assets'
import {motion} from 'motion/react'

const CustomerTestomonial = () => {
  return (
    <motion.div className='flex flex-col items-center mt-10 py-32 ' initial={{opacity:0.2,y:100}}
            whileInView={{opacity:1,y:0}}
            transition={{duration:0.8}}>
        <h1 className='text-3xl sm:text-4xl mb-2 font-semibold '>
        Customer Testomonials
        </h1>
        <p className='text-slate-500 mb-10'>What are users are saying</p>
        <div className='flex gap-14 '>
           {testimonialsData.map((item,idx)=>(
            <div className='flex flex-col items-center w-screen max-w-[320px] px-10 py-10 text-center bg-white/20 border rounded-lg shadow-md hover:scale-[1.01] cursor-pointer '>
                <img className='w-14 py-2' src={item.image} alt="" />
                <p>{item.name}</p>
                <p className='text-xs text-gray-500 py-2'>{item.role}</p>
                <p className='inline-flex py-2'>{Array(item.stars).fill("").map((i,idx)=>(
                    <img key={idx} src={assets.rating_star} alt="" />
                ))}</p>
                <p className='text-sm text-gray-500'>"{item.text}"</p>
            </div>
           ))}
        </div>
        </motion.div>
  )
}

export default CustomerTestomonial