import React from 'react'
import Header from '../components/Header'
import Steps from '../components/Steps'
import Create from '../components/Create'
import CustomerTestomonial from '../components/CustomerTestomonial'
import Generatebtn from '../components/Generatebtn'
import Footer from '../components/Footer'


const Home = () => {
  return (
    <div><Header/>
    <Steps/>
    <Create/>
    <CustomerTestomonial/>
    <Generatebtn/>
    </div>
  )
}

export default Home