import React from "react";
import Carousel from "./Carousel/Carousel";
import FlexContainer from "./UI/FlexContainer";

const Offer = (
  <div className="mb-2 w-full">
    <img
      className="object-cover h-10vh lg:h-auto mx-auto"
      src="https://i.linio.com/cms/0fce0aae-cccd-11eb-a091-ee2255d3cf9f.webp"
      alt="An offer"
    />
  </div>
);

export default function Banner() {
  return (
    <div className="lg:max-w-80vw mx-auto">
      {Offer}
      <Carousel />
    </div>
  );
}
