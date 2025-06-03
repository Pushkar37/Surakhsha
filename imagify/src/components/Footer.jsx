import React from 'react'
import { assets } from '../assets/assets'
import { Link } from 'react-router-dom'
const Footer = () => {
  return (
    <div className='flex items-center justify-between mt-10'>
        <div className='flex gap-14 sm:gap-16 items-center px-4 py-4 text-sm text-gray-500 '>
          <Link to="/">
          <img src={assets.logo} alt="" />
          </Link>
          <p className='border-l-4  px-4'>All right Reserved. Copyright Imagify</p>
        </div>
        <div className='flex gap-1'>
          <Link>
          <img src={assets.twitter_icon} alt="" />
          </Link> 
          <Link>
           <img src={assets.facebook_icon} alt="" />
          </Link>
          <Link>
           <img src={assets.instagram_icon} alt="" />
          </Link>
        </div>
    </div>
  )
}

export default Footer