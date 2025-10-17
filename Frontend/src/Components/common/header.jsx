// components/Header.jsx
import React from 'react';

export default function Header() {
  return (
    <div className="mb-8">
      <h1 className="text-4xl font-black text-teal-700 mb-2">
         Análisis de Ventas
      </h1>
      <p className="text-gray-600 text-sm">
        Dashboard para monitorear las ventas y el rendimiento de las tiendas.
      </p>
    </div>
  );
}