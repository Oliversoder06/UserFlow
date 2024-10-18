import React from 'react'

const Card = () => {
    return (
        <div className='w-[770px] h-[200px] bg-[#CACACA] border-[1px] border-black rounded-[13px] flex items-center px-[15px] justify-between'>
            <div className='size-[170px] bg-white border-[1px] border-black rounded-full
            flex items-center justify-center'>
                <p>PROFILE PIC</p>
            </div>
            <div className='w-[350px] flex flex-col gap-3'>
                {/* INFO */}
                <h1 className='text-black text-3xl font-medium'>Username</h1>
                <p className='text-black font-medium text-[16px]'>This description is also too long so whenever the text overflows, it ends with three dots as shown her...</p>
            </div>
            <div className='size-[170px] bg-white border-[1px] border-black
            flex items-center justify-center'>
                <p>IMAGE</p>
            </div>
        </div>
    )
}

export default Card