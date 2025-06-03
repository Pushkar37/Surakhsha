import React from 'react'
import { assets } from '../assets/assets'
import {motion} from 'motion/react'
 const Create = () => {
  return (
    <motion.div className='flex flex-col items-center' initial={{opacity:0.2,y:100}}
            whileInView={{opacity:1,y:0}}
            transition={{duration:0.8}}>
        <h1 className='text-3xl sm:text-4xl font-semibold mb-2'>Create AI Images</h1>
        <p className='text-slate-500 mb-8'>Turn imagination into visuals</p>
        <div className='flex gap-10 md:gap-14 items-center space-y-4 w-full max-w-5xl text-sm border bg-white shadow-md px-4 py-4 rounded-lg cursor-pointer '>
              <img width={300} src={assets.sample_img_1} alt="" />
              <div >
                <p className='text-2xl py-6 font-medium text-gray-500'>Introducing AI powered text to image generator </p>
                <p className='py-4'>Easily bring your ideas to life with our Image generator, Wheater you need
                    stunning visuals unique designs,my tool transforms your text to eye
                    cathing images with just few clicks. Imagine it , Type it , View it
                    
                </p>
                <p>
                    Simply type in the text prompt and our cutting edge AI will generate high
                    quality images in seconds. From product visuals to character designs and
                    portraits even concepts that  dont even exist can be visuallised effortlessly
                    powered by AI technology Imagination is limtless
                </p>
              </div>
        </div>
    </motion.div>
  )
}

export default Create