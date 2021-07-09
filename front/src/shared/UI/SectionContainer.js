import React from "react";

export default function SectionContainer({ children, className = "" }) {
  return (
    <div
      className={`col-start-1 col-span-4 lg:col-start-2 lg:col-span-10 ${className}`}
    >
      {children}
    </div>
  );
}
