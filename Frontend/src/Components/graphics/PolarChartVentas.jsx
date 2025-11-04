import React, { useState, useEffect } from 'react';
import { RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis, Radar, Legend, ResponsiveContainer, Tooltip } from 'recharts';
import Formulario from '../common/Formulario';

export default function PolarChartVentas() {
  const [datos, setDatos] = useState([]);

  const consulta = `
    SELECT 
      HOUR(fecha_transaccion) as hora,
      COUNT(*) as num_ventas,
      SUM(total) as monto_total
    FROM ventas
    GROUP BY HOUR(fecha_transaccion)
    ORDER BY hora
  `;

  const procesarDatos = (resultado) => {
    if (!resultado || resultado.length === 0) return;
    
    const datosFormateados = resultado.map(row => ({
      hora: `${row.hora}:00`,
      ventas: row.num_ventas,
      monto: Math.round(row.monto_total || 0)
    }));
    
    setDatos(datosFormateados);
  };

  return (
    <div className="bg-white rounded-xl shadow-md p-6">
      <Formulario consulta={consulta} onResultado={procesarDatos} />
      
      <h3 className="text-xl font-semibold text-gray-800 mb-4">
        Distribución de Ventas por Hora
      </h3>
      
      <ResponsiveContainer width="100%" height={400}>
        <RadarChart data={datos}>
          <PolarGrid stroke="#e0e0e0" />
          <PolarAngleAxis 
            dataKey="hora" 
            tick={{ fontSize: 12, fill: '#666' }}
          />
          <PolarRadiusAxis angle={90} domain={[0, 'auto']} tick={{ fontSize: 11 }} />
          <Radar
            name="Número de Ventas"
            dataKey="ventas"
            stroke="#8B5CF6"
            fill="#8B5CF6"
            fillOpacity={0.6}
          />
          <Radar
            name="Monto Total ($)"
            dataKey="monto"
            stroke="#10B981"
            fill="#10B981"
            fillOpacity={0.5}
          />
          <Legend />
          <Tooltip 
            contentStyle={{ 
              backgroundColor: 'rgba(255, 255, 255, 0.95)', 
              border: '1px solid #ddd',
              borderRadius: '8px' 
            }}
          />
        </RadarChart>
      </ResponsiveContainer>
      
      <p className="text-xs text-gray-500 text-center mt-2">
        Análisis de patrones de venta durante el día
      </p>
    </div>
  );
}