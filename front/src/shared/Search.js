import React from "react";
import Icons from "./UI/Icons";
import FlexContainer from "./UI/FlexContainer";

export default function Search({ placeholder, className = "" }) {
  return (
    <FlexContainer
      className={`items-center border border-black rounded-lg p-1 w-full justify-between ${className}`}
    >
      <input
        type="text"
        placeholder={placeholder}
        className="rounded-l-lg pl-2 outline-none"
      />
      <Icons type="search" className="mr-1 text-2xl" />
    </FlexContainer>
  );
}

// TODO: add X button to clear the input text
// TODO: check alignemnts on search icon
