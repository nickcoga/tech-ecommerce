import React from "react";

export default function MainContainer({ children, className = "" }) {
  return (
    <div
      className={`grid grid-cols-4 gap-2 lg:grid-cols-12 p-2 lg:p-0 ${className}`}
    >
      {children}
    </div>
  );
}
