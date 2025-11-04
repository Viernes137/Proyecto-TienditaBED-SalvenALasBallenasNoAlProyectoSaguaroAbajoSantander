import React, { useState } from 'react';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, Cell } from 'recharts';
import Formulario from '../common/Formulario';
import { TrendingUp } from 'lucide-react';

export default function TopProductos() {
  const [datos, setDatos] = useState([]);

  const consulta = `
    SELECT 
      p.nombre_prd AS producto,
      SUM(dv.cantidad) AS total_vendidos
    FROM detalles_ventas dv
    JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
    JOIN productos p ON pt.id_producto = p.id_producto
    GROUP BY p.nombre_prd
    ORDER BY total_vendidos DESC
    LIMIT 10
  `;

  const procesarDatos = (resultado) => {
    if (!resultado || resultado.length === 0) return;
    setDatos(resultado);
  };

  const colores = ['#EF4444', '#F97316', '#F59E0B', '#EAB308', '#84CC16', 
                   '#22C55E', '#10B981', '#14B8A6', '#06B6D4', '#0EA5E9'];

  return (
    <div className="bg-white rounded-xl shadow-md p-6">
      <Formulario consulta={consulta} onResultado={procesarDatos} />
      
      <div className="flex items-center justify-between mb-4">
        <h3 className="text-xl font-semibold text-gray-800">
          Top 10 Productos Más Vendidos
        </h3>
        <TrendingUp className="text-green-500" size={24} />
      </div>
      
      <ResponsiveContainer width="100%" height={400}>
        <BarChart 
          data={datos} 
          layout="vertical"
          margin={{ top: 5, right: 30, left: 20, bottom: 5 }}
        >
          <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
          <XAxis type="number" stroke="#666" tick={{ fontSize: 12 }} />
          <YAxis 
            dataKey="producto" 
            type="category" 
            width={150}
            stroke="#666"
            tick={{ fontSize: 11 }}
          />
          <Tooltip 
            contentStyle={{ 
              backgroundColor: 'rgba(255, 255, 255, 0.95)', 
              border: '1px solid #ddd',
              borderRadius: '8px' 
            }}
            formatter={(value) => [`${value} unidades`, 'Vendidos']}
          />
          <Bar dataKey="total_vendidos" radius={[0, 8, 8, 0]}>
            {datos.map((entry, index) => (
              <Cell key={`cell-${index}`} fill={colores[index]} />
            ))}
          </Bar>
        </BarChart>
      </ResponsiveContainer>
    </div>
  );
}