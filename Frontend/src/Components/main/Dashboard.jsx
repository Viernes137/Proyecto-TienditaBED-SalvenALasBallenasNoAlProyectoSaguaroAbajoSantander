import React, { useState } from 'react';
import Sidebar from '../common/sidebar.jsx';
import Header from '../common/header.jsx';
import KPICards from '../graphics/KPIcards.jsx';
import GraficaBurbujas from '../graphics/Burbuja.jsx';
import StreamGraphCategorias from '../graphics/StreamGraphCategorias.jsx';
import HeatmapVentas from '../graphics/HeatmapVentas.jsx';
import PolarChartVentas from '../graphics/PolarChartVentas.jsx';
import TopProductos from '../graphics/TopProductos.jsx';

export default function ChangarrosDashboard() {
  const [currentMonth, setCurrentMonth] = useState(new Date(2024, 9));
  const [selectedDay, setSelectedDay] = useState(null);
  const [sidebarOpen, setSidebarOpen] = useState(true);

  // Estados para datos
  const [ventasPorDia, setVentasPorDia] = useState([]);
  const [ventasHorarias, setVentasHorarias] = useState([]);
  const [tiendas, setTiendas] = useState([]);
  const [radarData, setRadarData] = useState([]);

  // Cálculos para KPIs
  const distribucionVentas = tiendas.map(t => ({
    name: t.nombre,
    value: t.ventas
  }));

  const totalVentas = tiendas.reduce((acc, t) => acc + (t.ventas || 0), 0);
  const totalGanancia = ventasPorDia.reduce((acc, d) => acc + (d.ganancia || 0), 0);
  const totalTransacciones = ventasPorDia.reduce((acc, d) => acc + (d.transacciones || 0), 0);
  const totalClientes = ventasPorDia.reduce((acc, d) => acc + (d.clientes || 0), 0);

  return (
    <div className="flex bg-gradient-to-br from-orange-50 to-yellow-50 min-h-screen font-system">
      <Sidebar sidebarOpen={sidebarOpen} setSidebarOpen={setSidebarOpen} />
      
      <div className="flex-1 overflow-y-auto">
        <div className="p-4 sm:p-6 lg:p-8">
          <Header />
          
          <KPICards 
            totalVentas={totalVentas}
            totalGanancia={totalGanancia}
            totalTransacciones={totalTransacciones}
            totalClientes={totalClientes}
          />

          {/* Gráfica de Burbujas existente */}
          <div className="mt-6">
            <GraficaBurbujas />
          </div>

          {/* Top 10 Productos */}
          <div className="mt-6">
            <TopProductos />
          </div>

          {/* Grid con 2 columnas para gráficas medianas */}
          <div className="mt-6 grid grid-cols-1 lg:grid-cols-2 gap-6">
            <HeatmapVentas />
            <PolarChartVentas />
          </div>

          {/* StreamGraph a ancho completo */}
          <div className="mt-6">
            <StreamGraphCategorias />
          </div>

        </div>
      </div>
    </div>
  );
}