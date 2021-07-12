import React from "react";
import Icons from "./UI/Icons";
import FlexContainer from "./UI/FlexContainer";
import { Link } from "react-router-dom";

export default function Footer() {
  return (
    <div className="col-start-1 col-span-4 lg:col-start-2 lg:col-span-10 my-4">
      <div className="grid grid-cols-2 lg:grid-cols-5 gap-3">
        <FlexContainer className="flex-col">
          <p className="font-bold mb-4">Acerca de Ecommerce</p>
          <Link to="/help">Ayuda</Link>
          <p>Nuevos Términos de Uso y Condiciones de Entrega</p>
          <p>Trabaja con nosotros</p>
        </FlexContainer>
        <FlexContainer className="flex-col">
          <p className="font-bold mb-4">Servicio al Cliente </p>
          <p>Preguntas Frecuentes</p>
          <p>Política de Garantía y Devoluciones</p>
          <p>Aviso de Privacidad</p>
        </FlexContainer>
        <FlexContainer className="flex-col">
          <p className="font-bold mb-4">Tiendas</p>
          <p>Lima Norte</p>
          <p>Lima Sur</p>
          <p>Centro Lima</p>
        </FlexContainer>
        <FlexContainer className="flex-col">
          <p className="font-bold mb-4">Novedades</p>
          <p>CMR days</p>
          <p>Cyber Wow</p>
          <p>PlayStation 5</p>
        </FlexContainer>
        <FlexContainer className="flex-col">
          <p className="font-bold mb-4">Redes sociales</p>
          <FlexContainer className="gap-2">
            <Icons className="text-3xl" type="facebook" />
            <Icons className="text-3xl" type="instagram" />
            <Icons className="text-3xl" type="twitter" />
            <Icons className="text-3xl" type="youtube" />
          </FlexContainer>
        </FlexContainer>
      </div>
    </div>
  );
}
