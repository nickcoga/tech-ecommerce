import React from "react";
import Icons from "./UI/Icons";
import FlexContainer from "./UI/FlexContainer";
import Search from "./Search";

export default function Header() {
  return (
    <>
      <FlexContainer className="px-3 pt-2 justify-between">
        <FlexContainer className="items-center gap-1">
          <Icons className="text-2xl" type="hamburguer" />
          <Icons className="text-2xl" type="react" />
          React
        </FlexContainer>
        <FlexContainer className="items-center gap-1">
          <Icons className="text-2xl" type="user" />
          <Icons className="text-3xl" type="shoppingCart" />
        </FlexContainer>
      </FlexContainer>
      <FlexContainer className="p-2">
        <Search placeholder="Busca un producto..." />
      </FlexContainer>
    </>
  );
}
