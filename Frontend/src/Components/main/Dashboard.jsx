import React, { useState } from 'react';
import Sidebar from '../common/Sidebar.jsx';
import Header from '../common/header.jsx';
import KPICards from '../graphics/KPICards.jsx';
import SalesChart from '../graphics/SalesChart.jsx';
import RadarChart from '../graphics/RadarChart.jsx';
import PieChartComponent from '../graphics/PieChartComponent.jsx';
import MapaTiendas from '../graphics/MapaTiendas.jsx';

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

          {/* Mapa de Tiendas */}
          <div className="mb-6 sm:mb-8">
            <MapaTiendas />
          </div>

        </div>
      </div>
    </div>
  );
}