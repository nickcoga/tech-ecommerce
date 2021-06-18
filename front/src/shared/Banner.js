import React from "react";
import Carousel from "./Carousel/Carousel";

const Offer = (
  <div className="mt-2 mb-2 w-full">
    <img
      className="object-cover h-20 lg:h-24 mx-auto"
      src="https://placeimg.com/2000/92/tech"
      alt="An offer"
    />
  </div>
);

export default function Banner() {
  return (
    <div className="mx-2 lg:max-w-80vw lg:mx-auto">
      {Offer}
      <Carousel />
    </div>
  );
}
