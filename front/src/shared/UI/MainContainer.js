import React from "react";

export default function MainContainer({ children, className = "" }) {
  return <div className={`p-2 lg:p-0 ${className}`}>{children}</div>;
}
