import React from "react";

export default function FlexContainer({ children, className = "" }) {
  return <div className={`flex ${className}`}>{children}</div>;
}
