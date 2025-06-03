import {React, useContext} from 'react'
import {assets} from "../assets/assets"
import { Link,Navigate, useNavigate } from 'react-router-dom'
import { AppContext } from '../context/AppContext';

const Navbar = () => {
  const navigate=useNavigate();
  const {user,setShowLogin}=useContext(AppContext);
  
    
  return (
    <div className='py-4 flex items-center justify-between'>
       <Link to='/'>
        <img className='w-28 sm:w-32 lg:w-40' src={assets.logo} alt="" />
       </Link>
       <div>
        {user ? <div className='flex items-center gap-3 sm:5'>
            <button className='flex items-center gap-1 bg-blue-100 rounded-full px-2 sm:px-4 py-1.5 sm:py-2 hover:scale-105 transition-all duration-700'><img className='w-4' src={assets.credit_star} alt="" />
            <p className='text-xs sm:text-sm font-medium text-gray-600'>Credit left</p></button>
            <p className='text-gray-600 max-sm:hidden pl-4'>
              Hi, Pushkar
            </p>
            <div className='relative group'>
              <img src={assets.profile_icon} className='w-10 drop-shadow' alt="" />
              <div className='absolute hidden group-hover:block top-0 right--4 z-10 text-black rounded pt-12'>
                   <ul className='list-none m-0 bg-white rounded-md border text-sm p-2 '>
                    <li className='cursor-pointer'>Logout</li>
                   </ul>
              </div>
            </div>
           </div> : 
           <div className='flex gap-6 sm:gap-8 items-center'><p onClick={()=>navigate('/Buycredits')} className='cursor-pointer'>Pricing</p>
        <button onClick={()=>setShowLogin(true)} className='px-7 bg-zinc-800 rounded-full py-2 text-sm text-white sm:px-10'>Login</button> </div>}
        
       </div>

    </div>
  )
}

export default Navbar