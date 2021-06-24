import React from "react";
import Icons from "./UI/Icons";
import FlexContainer from "./UI/FlexContainer";

export default function Card({
  url,
  index,
  altText,
  title,
  originalPrice,
  offerPrice,
  discount,
  specialPrice,
}) {
  return (
    <div className="flex-none border border-gray-500 p-2 w-50 rounded">
      <img src={url} alt={`${altText} ${index}`}></img>
      <p className="font-bold mt-3 line-clamp-2">{title}</p>
      <FlexContainer className="gap-2 items-center">
        <p className="line-through text-gray-600">S/. {originalPrice}</p>
        <p className="text-sm">-{discount}%</p>
      </FlexContainer>
      <p>S/. {offerPrice}</p>
      {specialPrice ? (
        <FlexContainer className="gap-2 items-center">
          <p>S/. {specialPrice}</p>
          <Icons type="creditCard" />
        </FlexContainer>
      ) : null}
    </div>
  );
}

// TODO: change colors based on the prop
