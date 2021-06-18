import React from "react";

export default function SectionContainer({ children, className = "" }) {
  return (
    <div className={`lg:max-w-80vw lg:mx-auto ${className}`}>{children}</div>
  );
}
