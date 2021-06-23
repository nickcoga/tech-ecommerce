import React from "react";
import FlexContainer from "./../UI/FlexContainer";
import "./styles.css";

export default function ImageSlider({ children, className = "" }) {
  return (
    <FlexContainer
      className={`overflow-x-auto lg:justify-between ${className}`}
    >
      {children}
    </FlexContainer>
  );
}
