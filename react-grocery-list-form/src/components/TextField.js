import React from 'react';

const TextField = props => {
  return (
    <input
      name={props.name}
      type='text'
      placeholder={props.placeholder}
    />
  );
}

export default TextField;
