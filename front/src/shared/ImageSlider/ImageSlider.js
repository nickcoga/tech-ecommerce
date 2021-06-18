import React from "react";
import { imageLinks } from "../../constants/hotCategories";
import FlexContainer from "./../UI/FlexContainer";
import "./styles.css";

const links = Object.entries(imageLinks);

export default function ImageSlider() {
  return (
    <FlexContainer className="mt-2 gap-1 overflow-x-auto lg:justify-between">
      {links.map(([key, url], index) => {
        return (
          <div key={key} className="flex-none">
            <img src={url} alt={`hot category ${index}`}></img>
          </div>
        );
      })}
    </FlexContainer>
  );
}
