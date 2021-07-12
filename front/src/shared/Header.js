import React from "react";
import Icons from "./UI/Icons";
import FlexContainer from "./UI/FlexContainer";
import Search from "./Search";
import { Link } from "react-router-dom";

export default function Header() {
  return (
    <div className="col-start-1 col-span-4 lg:col-span-12">
      <FlexContainer className="px-1 lg:px-3 lg:pt-2 justify-between">
        <FlexContainer className="items-center gap-1">
          <Icons className="text-2xl" type="hamburguer" />
          <Link to="/" className="flex">
            <Icons className="text-2xl" type="react" />
            React
          </Link>
        </FlexContainer>
        <Search
          placeholder="Busca un producto..."
          className="mx-3 hidden sm:flex"
        />
        <FlexContainer className="items-center gap-1">
          <Icons className="text-2xl" type="user" />
          <Link to="/cart">
            <Icons className="text-3xl" type="shoppingCart" />
          </Link>
        </FlexContainer>
      </FlexContainer>
      <FlexContainer className="pt-2 sm:hidden">
        <Search placeholder="Busca un producto..." />
      </FlexContainer>
    </div>
  );
}
