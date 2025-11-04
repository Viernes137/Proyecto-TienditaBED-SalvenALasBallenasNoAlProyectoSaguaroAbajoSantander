import React, { useState, useEffect } from 'react';
import { AreaChart, Area, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import Formulario from '../common/Formulario';

export default function StreamGraphCategorias() {
  const [datos, setDatos] = useState([]);

  const consulta = `
    SELECT 
      DATE(v.fecha_transaccion) as fecha,
      p.categoria,
      SUM(dv.cantidad) as cantidad
    FROM detalles_ventas dv
    JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
    JOIN productos p ON pt.id_producto = p.id_producto
    JOIN ventas v ON dv.id_venta = v.id_venta
    GROUP BY DATE(v.fecha_transaccion), p.categoria
    ORDER BY fecha
  `;

  const procesarDatos = (resultado) => {
    if (!resultado || resultado.length === 0) return;

    const datosAgrupados = {};
    const categorias = new Set();

    resultado.forEach(row => {
      const fecha = row.fecha;
      categorias.add(row.categoria);
      
      if (!datosAgrupados[fecha]) {
        datosAgrupados[fecha] = { fecha };
      }
      datosAgrupados[fecha][row.categoria] = row.cantidad;
    });

    const datosFinales = Object.values(datosAgrupados).map(dia => {
      categorias.forEach(cat => {
        if (!dia[cat]) dia[cat] = 0;
      });
      return dia;
    });

    setDatos(datosFinales);
  };

  const colores = ['#FF6B6B', '#4ECDC4', '#45B7D1', '#FFA07A', '#98D8C8', '#F7DC6F', '#BB8FCE', '#85C1E2'];

  return (
    <div className="bg-white rounded-xl shadow-md p-6">
      <Formulario consulta={consulta} onResultado={procesarDatos} />
      
      <h3 className="text-xl font-semibold text-gray-800 mb-4">
        Ventas por Categoría en el Tiempo
      </h3>
      
      <ResponsiveContainer width="100%" height={350}>
        <AreaChart data={datos}>
          <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
          <XAxis 
            dataKey="fecha" 
            stroke="#666"
            tick={{ fontSize: 12 }}
          />
          <YAxis stroke="#666" tick={{ fontSize: 12 }} />
          <Tooltip 
            contentStyle={{ 
              backgroundColor: 'rgba(255, 255, 255, 0.95)', 
              border: '1px solid #ddd',
              borderRadius: '8px' 
            }}
          />
          <Legend />
          {datos.length > 0 && Object.keys(datos[0])
            .filter(key => key !== 'fecha')
            .map((categoria, index) => (
              <Area
                key={categoria}
                type="monotone"
                dataKey={categoria}
                stackId="1"
                stroke={colores[index % colores.length]}
                fill={colores[index % colores.length]}
                fillOpacity={0.7}
              />
            ))}
        </AreaChart>
      </ResponsiveContainer>
    </div>
  );
}