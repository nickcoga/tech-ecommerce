import React from "react";
import Carousel from "./Carousel/Carousel";
import { Link } from "react-router-dom";

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
    <>
      <Link to="/partnership-discounts">{Offer} </Link>
      <Carousel />
    </>
  );
}
