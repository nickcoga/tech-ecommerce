import React from "react";
import Header from "../shared/Header";
import Footer from "../shared/Footer";
import MainContainer from "../shared/UI/MainContainer";
import SectionContainer from "../shared/UI/SectionContainer";
import FlexContainer from "../shared/UI/FlexContainer";

export default function Help() {
  return (
    <MainContainer>
      <Header />
      <SectionContainer className="flex flex-col items-center ">
        <h1>Hemos renovado nuestro centro de ayuda</h1>
        <p>Podras encontrar todas tus respuestas aqui</p>
        <p>¿Tu duda esta relacionada con un pedido?</p>
        <FlexContainer className="gap-4 p-5">
          <div className=" border border-black px-12">SI</div>
          <div className=" border border-black px-12">NO</div>
        </FlexContainer>
      </SectionContainer>
      <Footer />
    </MainContainer>
  );
}
