import Link from 'next/link'
import React from 'react'

const Navbar = () => {
    return (
        <nav className='bg-[#B4B4B4] h-[100px] flex justify-center '>
            <div className='max-w-[1440px] h-full w-full flex items-center justify-between px-2
           
            '>
                <Link href="/">
                    <h1 className='text-black text-2xl font-bold'>UserFlow</h1>
                </Link>
                <div className='w-[200px] h-[50px] flex items-center justify-center bg-[#D9D9D9] select-none hover:bg-[#ebebeb] cursor-pointer'>
                    <p className='text-black text-xl font-semibold'>Create User</p>
                </div>
            </div>
        </nav>
    )
}

export default Navbar