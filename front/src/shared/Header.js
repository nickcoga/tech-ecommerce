import React from "react";
import Icons from "./UI/Icons";
import FlexContainer from "./UI/FlexContainer";
import Search from "./Search";

export default function Header() {
  return (
    <>
      <FlexContainer className="px-1 lg:px-3 lg:pt-2 justify-between">
        <FlexContainer className="items-center gap-1">
          <Icons className="text-2xl" type="hamburguer" />
          <Icons className="text-2xl" type="react" />
          React
        </FlexContainer>
        <Search
          placeholder="Busca un producto..."
          className="mx-3 hidden sm:flex"
        />
        <FlexContainer className="items-center gap-1">
          <Icons className="text-2xl" type="user" />
          <Icons className="text-3xl" type="shoppingCart" />
        </FlexContainer>
      </FlexContainer>
      <FlexContainer className="pt-2 sm:hidden">
        <Search placeholder="Busca un producto..." />
      </FlexContainer>
    </>
  );
}
