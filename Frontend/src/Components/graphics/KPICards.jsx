import React, { useState, useEffect } from 'react';
import { TrendingUp, Package, Users, Store } from 'lucide-react';
import Formulario from '../common/Formulario';

export default function KPICards() {
  // Estados para las consultas
  const [consultaVentas, setConsultaVentas] = useState(null);
  const [consultaGanancias, setConsultaGanancias] = useState(null);
  const [consultaTransacciones, setConsultaTransacciones] = useState(null);
  const [consultaClientes, setConsultaClientes] = useState(null);
  const [consultaComparacion, setConsultaComparacion] = useState(null);
  
  // Estados para los datos
  const [totalVentas, setTotalVentas] = useState(0);
  const [totalGanancia, setTotalGanancia] = useState(0);
  const [totalTransacciones, setTotalTransacciones] = useState(0);
  const [totalClientes, setTotalClientes] = useState(0);
  const [promedioClientesDia, setPromedioClientesDia] = useState(0);
  const [cambioSemanal, setCambioSemanal] = useState(0);
  const [margenGanancia, setMargenGanancia] = useState(0);

  // Cargar datos al montar
  useEffect(() => {
    // Total de ventas (última semana o mes)
    setConsultaVentas(`
      SELECT 
        SUM(dv.cantidad * pv.precio_venta) as total
      FROM ventas v
      JOIN detalles_ventas dv ON v.id_venta = dv.id_venta
      JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
      JOIN precio_venta pv ON pt.id_particular = pv.id_particular
      WHERE v.fecha_transaccion >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
    `);

    // Total de ganancias
    setConsultaGanancias(`
      SELECT 
        SUM((pv.precio_venta - pc.precio_compra) * dv.cantidad) as ganancia,
        SUM(dv.cantidad * pv.precio_venta) as ventas_total
      FROM ventas v
      JOIN detalles_ventas dv ON v.id_venta = dv.id_venta
      JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
      JOIN precio_venta pv ON pt.id_particular = pv.id_particular
      JOIN precio_compra pc ON pt.id_particular = pc.id_particular
      WHERE v.fecha_transaccion >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
    `);

    // Total de transacciones
    setConsultaTransacciones(`
      SELECT 
        COUNT(*) as total,
        COUNT(CASE WHEN fecha_transaccion >= DATE_SUB(CURDATE(), INTERVAL 7 DAY) THEN 1 END) as esta_semana,
        COUNT(CASE WHEN fecha_transaccion >= DATE_SUB(CURDATE(), INTERVAL 14 DAY) 
                   AND fecha_transaccion < DATE_SUB(CURDATE(), INTERVAL 7 DAY) THEN 1 END) as semana_anterior
      FROM ventas
      WHERE fecha_transaccion >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
    `);

    // Clientes únicos y promedio por día
    setConsultaClientes(`
      SELECT 
        COUNT(DISTINCT v.id_empleado) as total_clientes,
        COUNT(DISTINCT DATE(v.fecha_transaccion)) as dias_con_ventas,
        COUNT(*) / COUNT(DISTINCT DATE(v.fecha_transaccion)) as promedio_por_dia
      FROM ventas v
      WHERE v.fecha_transaccion >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
    `);
  }, []);

  // Handlers para cada consulta
  const handleResultadoVentas = (resultado) => {
    if (resultado && resultado.length > 0) {
      setTotalVentas(resultado[0].total || 0);
    }
    setConsultaVentas(null);
  };

  const handleResultadoGanancias = (resultado) => {
    if (resultado && resultado.length > 0) {
      const ganancia = resultado[0].ganancia || 0;
      const ventasTotal = resultado[0].ventas_total || 0;
      setTotalGanancia(ganancia);
      
      // Calcular margen de ganancia
      if (ventasTotal > 0) {
        const margen = ((ganancia / ventasTotal) * 100).toFixed(1);
        setMargenGanancia(margen);
      }
    }
    setConsultaGanancias(null);
  };

  const handleResultadoTransacciones = (resultado) => {
    if (resultado && resultado.length > 0) {
      const data = resultado[0];
      setTotalTransacciones(data.total || 0);
      
      // Calcular cambio porcentual
      if (data.semana_anterior > 0) {
        const cambio = (((data.esta_semana - data.semana_anterior) / data.semana_anterior) * 100).toFixed(1);
        setCambioSemanal(cambio);
      }
    }
    setConsultaTransacciones(null);
  };

  const handleResultadoClientes = (resultado) => {
    if (resultado && resultado.length > 0) {
      const data = resultado[0];
      setTotalClientes(data.total_clientes || 0);
      setPromedioClientesDia(Math.round(data.promedio_por_dia || 0));
    }
    setConsultaClientes(null);
  };

  const cards = [
    {
      icon: TrendingUp,
      titulo: 'Ventas Totales',
      valor: `$${totalVentas.toLocaleString()}`,
      subtitulo: cambioSemanal >= 0 ? `+${cambioSemanal}% vs semana anterior` : `${cambioSemanal}% vs semana anterior`,
      color: 'teal',
      bgColor: 'bg-teal-50',
      borderColor: 'border-l-teal-600'
    },
    {
      icon: Package,
      titulo: 'Ganancia Neta',
      valor: `$${totalGanancia.toLocaleString()}`,
      subtitulo: `Margen ${margenGanancia}%`,
      color: 'yellow',
      bgColor: 'bg-yellow-50',
      borderColor: 'border-l-yellow-400'
    },
    {
      icon: Users,
      titulo: 'Transacciones',
      valor: totalTransacciones.toLocaleString(),
      subtitulo: cambioSemanal >= 0 ? `+${cambioSemanal}% esta semana` : `${cambioSemanal}% esta semana`,
      color: 'orange',
      bgColor: 'bg-orange-50',
      borderColor: 'border-l-orange-500'
    },
    {
      icon: Store,
      titulo: 'Clientes',
      valor: totalClientes.toLocaleString(),
      subtitulo: `Promedio ${promedioClientesDia} por día`,
      color: 'red',
      bgColor: 'bg-red-50',
      borderColor: 'border-l-orange-600'
    }
  ];

  const colorMap = {
    teal: { text: 'text-teal-700', bg: 'bg-teal-100', icon: 'text-teal-700' },
    yellow: { text: 'text-yellow-500', bg: 'bg-yellow-100', icon: 'text-yellow-500' },
    orange: { text: 'text-orange-600', bg: 'bg-orange-100', icon: 'text-orange-600' },
    red: { text: 'text-red-600', bg: 'bg-red-100', icon: 'text-red-600' }
  };

  return (
    <>
      {/* Formularios ocultos para consultas */}
      {consultaVentas && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaVentas} onResultado={handleResultadoVentas} />
        </div>
      )}
      {consultaGanancias && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaGanancias} onResultado={handleResultadoGanancias} />
        </div>
      )}
      {consultaTransacciones && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaTransacciones} onResultado={handleResultadoTransacciones} />
        </div>
      )}
      {consultaClientes && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaClientes} onResultado={handleResultadoClientes} />
        </div>
      )}

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-5 mb-8">
        {cards.map((card, i) => {
          const colors = colorMap[card.color];
          return (
            <div
              key={i}
              className={`${card.bgColor} p-6 rounded-2xl shadow-sm border-l-4 ${card.borderColor} transition-all hover:shadow-md`}
            >
              <div className="flex justify-between items-start">
                <div className="flex-1">
                  <p className="text-gray-600 text-xs font-bold uppercase tracking-wider mb-2">
                    {card.titulo}
                  </p>
                  <h2 className={`${colors.text} text-2xl font-black mb-2`}>
                    {card.valor}
                  </h2>
                  <p className="text-gray-500 text-xs">{card.subtitulo}</p>
                </div>
                <div className={`${colors.bg} w-14 h-14 rounded-xl flex items-center justify-center`}>
                  <card.icon size={28} className={colors.icon} />
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </>
  );
}