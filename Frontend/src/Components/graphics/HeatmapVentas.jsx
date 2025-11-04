import React, { useState, useEffect } from 'react';
import Formulario from '../common/Formulario';

export default function HeatmapVentas() {
  const [datos, setDatos] = useState([]);
  const [mes, setMes] = useState(new Date().getMonth() + 1); // Mes actual
  const [año, setAño] = useState(new Date().getFullYear());
  const [consulta, setConsulta] = useState(null);
  const [cargando, setCargando] = useState(true);

  // Generar consulta cuando cambian mes o año
  useEffect(() => {
    setCargando(true);
    setConsulta(`
      SELECT 
        DAYOFWEEK(fecha_transaccion) as dia_semana,
        DAY(fecha_transaccion) as dia_mes,
        MONTH(fecha_transaccion) as mes,
        COUNT(*) as num_ventas
      FROM ventas
      WHERE MONTH(fecha_transaccion) = ${mes} AND YEAR(fecha_transaccion) = ${año}
      GROUP BY DAYOFWEEK(fecha_transaccion), DAY(fecha_transaccion), MONTH(fecha_transaccion)
      ORDER BY dia_mes
    `);
  }, [mes, año]);

  const procesarDatos = (resultado) => {
    console.log('Datos recibidos:', resultado); // Debug
    if (resultado && resultado.length > 0) {
      setDatos(resultado);
    } else {
      setDatos([]);
    }
    setConsulta(null);
    setCargando(false);
  };

  const obtenerColor = (valor) => {
    if (!valor || valor === 0) return '#F1F5F9'; // Gris muy claro
    const max = Math.max(...datos.map(d => d.num_ventas));
    const intensidad = (valor / max) * 100;
    
    // Paleta verde-esmeralda-turquesa (más profesional y agradable)
    if (intensidad < 15) return '#D1FAE5'; // Verde muy claro
    if (intensidad < 30) return '#A7F3D0'; // Verde claro
    if (intensidad < 45) return '#6EE7B7'; // Verde medio
    if (intensidad < 60) return '#34D399'; // Verde esmeralda
    if (intensidad < 75) return '#10B981'; // Esmeralda fuerte
    if (intensidad < 90) return '#059669'; // Esmeralda oscuro
    return '#047857'; // Verde oscuro intenso
  };

  const diasSemana = ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb'];
  const meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 
                 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];

  // Crear matriz del calendario - CORREGIDO
  const crearCalendario = () => {
    const diasEnMes = new Date(año, mes, 0).getDate(); // Correcto: mes sin -1 da el último día
    const primerDia = new Date(año, mes - 1, 1).getDay(); // Primer día del mes
    
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
      {consulta && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consulta} onResultado={procesarDatos} />
        </div>
      )}
      
      <div className="flex items-center justify-between mb-4">
        <div>
          <h3 className="text-xl font-semibold text-gray-800">
            Mapa de Calor - Ventas por Día
          </h3>
          <p className="text-sm text-gray-500">{meses[mes - 1]} {año}</p>
        </div>
        
        {/* Selectores de mes y año */}
        <div className="flex gap-2">
          <select
            value={mes}
            onChange={(e) => setMes(parseInt(e.target.value))}
            className="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
          >
            {meses.map((nombreMes, index) => (
              <option key={index} value={index + 1}>
                {nombreMes}
              </option>
            ))}
          </select>
          
          <select
            value={año}
            onChange={(e) => setAño(parseInt(e.target.value))}
            className="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-orange-500 focus:border-orange-500"
          >
            {[2022, 2023, 2024, 2025].map(y => (
              <option key={y} value={y}>{y}</option>
            ))}
          </select>
        </div>
      </div>

      {cargando ? (
        <div className="flex justify-center items-center h-64">
          <div className="text-gray-500">Cargando datos...</div>
        </div>
      ) : datos.length === 0 ? (
        <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-6 text-center">
          <p className="text-yellow-800 font-medium">No hay datos de ventas para {meses[mes - 1]} {año}</p>
          <p className="text-yellow-600 text-sm mt-2">Prueba con otro mes o año</p>
        </div>
      ) : (
        <>
          <div className="bg-gradient-to-r from-emerald-100 to-teal-100 px-4 py-2 rounded-lg mb-4 inline-block">
            <p className="text-xs text-gray-600">Promedio diario</p>
            <p className="text-lg font-bold text-emerald-700">{promedioVentas} ventas</p>
          </div>
          
          {/* Calendario */}
          <div className="bg-gradient-to-br from-slate-50 to-gray-50 rounded-lg p-4 border border-gray-200">
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
                      className={`aspect-square rounded-lg flex flex-col items-center justify-center text-sm font-medium transition-all duration-200 shadow-sm ${
                        dia ? 'hover:scale-110 hover:shadow-lg cursor-pointer border border-gray-200' : ''
                      }`}
                      style={{ 
                        backgroundColor: dia ? obtenerColor(dia.ventas) : 'transparent',
                      }}
                      title={dia ? `Día ${dia.dia}: ${dia.ventas} ventas` : ''}
                    >
                      {dia && (
                        <>
                          <span className="text-xs font-bold text-gray-700">{dia.dia}</span>
                          {dia.ventas > 0 && (
                            <span className="text-[10px] font-black text-gray-900 mt-0.5 bg-white/60 px-1.5 py-0.5 rounded">
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
            <span className="font-medium">Menos</span>
            <div className="flex space-x-1">
              {[
                { color: '#F1F5F9', label: 'Sin ventas' },
                { color: '#D1FAE5', label: '0-15%' },
                { color: '#A7F3D0', label: '15-30%' },
                { color: '#6EE7B7', label: '30-45%' },
                { color: '#34D399', label: '45-60%' },
                { color: '#10B981', label: '60-75%' },
                { color: '#059669', label: '75-90%' },
                { color: '#047857', label: '90-100%' }
              ].map((item) => (
                <div 
                  key={item.color} 
                  className="w-7 h-5 rounded border border-gray-300 shadow-sm" 
                  style={{ backgroundColor: item.color }}
                  title={item.label}
                ></div>
              ))}
            </div>
            <span className="font-medium">Más</span>
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
        </>
      )}
    </div>
  );
}