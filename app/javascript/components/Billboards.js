import React from 'react';

const Billboards = ({ billboards }) => {
  //const { billboards } = props;  
  return (
    <>
    <h1>Rails Top 100</h1>
    <h1>{billboards.album}</h1>
    </>
  )
}

export default Billboards;