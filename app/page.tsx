import Card from '@/components/Card'
import Navbar from '@/components/Navbar'
import React from 'react'

function page() {
  return (
    <main className='flex justify-center'>
      <div className='max-w-[1440px] w-full items-center flex flex-col justify-between min-h-screen h-auto py-10
       
      '>
        {/* SEARCH */}
        <input
          type="text"
          placeholder="Search for users"
          className='bg-white w-[770px] h-[70px] rounded-full px-4 text-xl ' />

        {/* CARDS */}
        <div className='flex flex-col gap-4'>
          <Card />
          <Card />
          <Card />
        </div>

        {/* PAGINATION */}
        <div className='flex gap-4'>
          <div className='w-[50px] h-[50px] bg-[#B4B4B4] flex items-center justify-center rounded-full'>
            <p>1</p>
          </div>
          <div className='w-[50px] h-[50px] bg-[#B4B4B4] flex items-center justify-center rounded-full'>
            <p>2</p>
          </div>
          <div className='w-[50px] h-[50px] bg-[#B4B4B4] flex items-center justify-center rounded-full'>
            <p>3</p>
          </div>
          <div className='w-[50px] h-[50px] bg-[#B4B4B4] flex items-center justify-center rounded-full'>
            <p>4</p>
          </div>
          <div className='w-[50px] h-[50px] bg-[#B4B4B4] flex items-center justify-center rounded-full'>
            <p>5</p>
          </div>
        </div>
      </div>
    </main>
  )
}

export default page