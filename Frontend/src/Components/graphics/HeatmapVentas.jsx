import React, { useState, useEffect } from 'react';
import Formulario from '../common/Formulario';

export default function HeatmapVentas() {
  const [datos, setDatos] = useState([]);
  const [mes, setMes] = useState(10); // Octubre
  const [año, setAño] = useState(2024);

  const consulta = `
    SELECT 
      DAYOFWEEK(fecha_transaccion) as dia_semana,
      DAY(fecha_transaccion) as dia_mes,
      MONTH(fecha_transaccion) as mes,
      COUNT(*) as num_ventas
    FROM ventas
    WHERE MONTH(fecha_transaccion) = ${mes} AND YEAR(fecha_transaccion) = ${año}
    GROUP BY DAYOFWEEK(fecha_transaccion), DAY(fecha_transaccion), MONTH(fecha_transaccion)
    ORDER BY dia_mes
  `;

  const procesarDatos = (resultado) => {
    if (!resultado || resultado.length === 0) return;
    setDatos(resultado);
  };

  const obtenerColor = (valor) => {
    if (!valor || valor === 0) return '#F3F4F6';
    const max = Math.max(...datos.map(d => d.num_ventas));
    const intensidad = (valor / max) * 100;
    
    if (intensidad < 20) return '#FEF3C7';
    if (intensidad < 40) return '#FDE047';
    if (intensidad < 60) return '#FACC15';
    if (intensidad < 80) return '#F59E0B';
    return '#EA580C';
  };

  const diasSemana = ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb'];
  const meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 
                 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];

  // Crear matriz del calendario
  const crearCalendario = () => {
    const diasEnMes = new Date(año, mes, 0).getDate();
    const primerDia = new Date(año, mes - 1, 1).getDay();
    
    const semanas = [];
    let semanaActual = new Array(7).fill(null);
    
    // Rellenar días vacíos al inicio
    for (let i = 0; i < primerDia; i++) {
      semanaActual[i] = null;
    }
    
    // Rellenar días del mes
    for (let dia = 1; dia <= diasEnMes; dia++) {
      const diaSemana = new Date(año, mes - 1, dia).getDay();
      
      const ventasDia = datos.find(d => d.dia_mes === dia);
      semanaActual[diaSemana] = {
        dia: dia,
        ventas: ventasDia ? ventasDia.num_ventas : 0
      };
      
      if (diaSemana === 6 || dia === diasEnMes) {
        semanas.push([...semanaActual]);
        semanaActual = new Array(7).fill(null);
      }
    }
    
    return semanas;
  };

  const calendario = crearCalendario();
  const totalVentas = datos.reduce((acc, d) => acc + d.num_ventas, 0);
  const promedioVentas = datos.length > 0 ? (totalVentas / datos.length).toFixed(1) : 0;

  return (
    <div className="bg-white rounded-xl shadow-md p-6">
      <Formulario consulta={consulta} onResultado={procesarDatos} />
      
      <div className="flex items-center justify-between mb-4">
        <div>
          <h3 className="text-xl font-semibold text-gray-800">
            Mapa de Calor - Ventas por Día
          </h3>
          <p className="text-sm text-gray-500">{meses[mes - 1]} {año}</p>
        </div>
        <div className="bg-gradient-to-r from-orange-100 to-yellow-100 px-4 py-2 rounded-lg">
          <p className="text-xs text-gray-600">Promedio diario</p>
          <p className="text-lg font-bold text-orange-600">{promedioVentas} ventas</p>
        </div>
      </div>
      
      {/* Calendario */}
      <div className="bg-gradient-to-br from-orange-50 to-yellow-50 rounded-lg p-4">
        {/* Encabezado días de la semana */}
        <div className="grid grid-cols-7 gap-2 mb-2">
          {diasSemana.map(dia => (
            <div key={dia} className="text-center text-xs font-semibold text-gray-600 py-2">
              {dia}
            </div>
          ))}
        </div>
        
        {/* Semanas del mes */}
        <div className="space-y-2">
          {calendario.map((semana, indexSemana) => (
            <div key={indexSemana} className="grid grid-cols-7 gap-2">
              {semana.map((dia, indexDia) => (
                <div
                  key={indexDia}
                  className={`aspect-square rounded-lg flex flex-col items-center justify-center text-sm font-medium transition-all duration-200 ${
                    dia ? 'hover:scale-110 hover:shadow-md cursor-pointer' : ''
                  }`}
                  style={{ 
                    backgroundColor: dia ? obtenerColor(dia.ventas) : 'transparent',
                  }}
                  title={dia ? `Día ${dia.dia}: ${dia.ventas} ventas` : ''}
                >
                  {dia && (
                    <>
                      <span className="text-xs text-gray-700">{dia.dia}</span>
                      {dia.ventas > 0 && (
                        <span className="text-xs font-bold text-gray-800 mt-0.5">
                          {dia.ventas}
                        </span>
                      )}
                    </>
                  )}
                </div>
              ))}
            </div>
          ))}
        </div>
      </div>
      
      {/* Leyenda */}
      <div className="flex items-center justify-center mt-4 space-x-2 text-xs text-gray-600">
        <span>Menos</span>
        <div className="flex space-x-1">
          {['#F3F4F6', '#FEF3C7', '#FDE047', '#FACC15', '#F59E0B', '#EA580C'].map((color, i) => (
            <div 
              key={color} 
              className="w-6 h-4 rounded border border-gray-200" 
              style={{ backgroundColor: color }}
              title={i === 0 ? 'Sin ventas' : `${i * 20}% del máximo`}
            ></div>
          ))}
        </div>
        <span>Más</span>
      </div>
      
      {/* Stats rápidas */}
      <div className="mt-4 grid grid-cols-3 gap-3">
        <div className="bg-green-50 rounded-lg p-3 text-center">
          <p className="text-xs text-gray-600">Total Ventas</p>
          <p className="text-lg font-bold text-green-600">{totalVentas}</p>
        </div>
        <div className="bg-blue-50 rounded-lg p-3 text-center">
          <p className="text-xs text-gray-600">Días con Ventas</p>
          <p className="text-lg font-bold text-blue-600">{datos.length}</p>
        </div>
        <div className="bg-purple-50 rounded-lg p-3 text-center">
          <p className="text-xs text-gray-600">Día Pico</p>
          <p className="text-lg font-bold text-purple-600">
            {datos.length > 0 ? Math.max(...datos.map(d => d.num_ventas)) : 0}
          </p>
        </div>
      </div>
    </div>
  );
}