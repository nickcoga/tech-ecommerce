import { css } from "@emotion/react";
import React from "react";
import {
  FaBars,
  FaSearch,
  FaShoppingCart,
  FaUserCircle,
  FaReact,
  FaTimes,
  FaChevronLeft,
  FaChevronRight,
  FaRegCreditCard,
  FaFacebookSquare,
  FaTwitterSquare,
  FaInstagramSquare,
  FaYoutubeSquare,
} from "react-icons/fa";

const iconSet = {
  hamburguer: FaBars,
  search: FaSearch,
  shoppingCart: FaShoppingCart,
  user: FaUserCircle,
  react: FaReact,
  clear: FaTimes,
  previous: FaChevronLeft,
  next: FaChevronRight,
  creditCard: FaRegCreditCard,
  facebook: FaFacebookSquare,
  instagram: FaTwitterSquare,
  twitter: FaInstagramSquare,
  youtube: FaYoutubeSquare,
};

const Icons = ({ type, color, className, onClick }) => {
  const ComponentToRender = iconSet[type];
  return (
    <>
      {type ? (
        <ComponentToRender
          className={className}
          css={css`
            color: ${color};
          `}
          onClick={onClick}
        />
      ) : (
        <span>Pass a correct type</span>
      )}
    </>
  );
};

export default Icons;
