import React, { useState, useEffect } from 'react';
import Formulario from '../common/Formulario';

export default function HeatmapVentas() {
  const [datos, setDatos] = useState([]);

  const consulta = `
    SELECT 
      DAYOFWEEK(fecha_transaccion) as dia_semana,
      DAY(fecha_transaccion) as dia_mes,
      COUNT(*) as num_ventas
    FROM ventas
    GROUP BY DAYOFWEEK(fecha_transaccion), DAY(fecha_transaccion)
    ORDER BY dia_mes
  `;

  const procesarDatos = (resultado) => {
    if (!resultado || resultado.length === 0) return;
    setDatos(resultado);
  };

  const obtenerColor = (valor) => {
    const max = Math.max(...datos.map(d => d.num_ventas));
    const intensidad = (valor / max) * 100;
    
    if (intensidad < 20) return '#FEF3C7';
    if (intensidad < 40) return '#FDE047';
    if (intensidad < 60) return '#FACC15';
    if (intensidad < 80) return '#F59E0B';
    return '#EA580C';
  };

  const diasSemana = ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb'];

  const matrizDatos = {};
  datos.forEach(d => {
    if (!matrizDatos[d.dia_mes]) {
      matrizDatos[d.dia_mes] = {};
    }
    matrizDatos[d.dia_mes][d.dia_semana] = d.num_ventas;
  });

  return (
    <div className="bg-white rounded-xl shadow-md p-6">
      <Formulario consulta={consulta} onResultado={procesarDatos} />
      
      <h3 className="text-xl font-semibold text-gray-800 mb-4">
        Mapa de Calor - Ventas por Día
      </h3>
      
      <div className="overflow-x-auto">
        <div className="inline-block min-w-full">
          <div className="flex mb-2">
            <div className="w-12"></div>
            {diasSemana.map(dia => (
              <div key={dia} className="w-14 text-center text-xs font-medium text-gray-600">
                {dia}
              </div>
            ))}
          </div>
          
          {Object.keys(matrizDatos).sort((a, b) => a - b).map(dia => (
            <div key={dia} className="flex mb-1">
              <div className="w-12 text-xs text-gray-600 flex items-center justify-end pr-2">
                Día {dia}
              </div>
              {[1, 2, 3, 4, 5, 6, 7].map(diaSemana => {
                const valor = matrizDatos[dia][diaSemana] || 0;
                return (
                  <div
                    key={diaSemana}
                    className="w-14 h-12 mx-0.5 rounded flex items-center justify-center text-xs font-semibold transition-all hover:scale-110 cursor-pointer"
                    style={{ 
                      backgroundColor: valor > 0 ? obtenerColor(valor) : '#F3F4F6',
                      color: valor > 0 ? '#1F2937' : '#9CA3AF'
                    }}
                    title={`${diasSemana[diaSemana - 1]}: ${valor} ventas`}
                  >
                    {valor > 0 ? valor : ''}
                  </div>
                );
              })}
            </div>
          ))}
        </div>
      </div>
      
      <div className="flex items-center justify-center mt-4 space-x-2 text-xs text-gray-600">
        <span>Menos</span>
        <div className="flex space-x-1">
          {['#FEF3C7', '#FDE047', '#FACC15', '#F59E0B', '#EA580C'].map(color => (
            <div key={color} className="w-6 h-4 rounded" style={{ backgroundColor: color }}></div>
          ))}
        </div>
        <span>Más</span>
      </div>
    </div>
  );
}