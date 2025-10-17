import React, { useState } from 'react';
import Sidebar from './Components/common/sidebar.jsx';
import Header from './Components/common/header.jsx';
import KPICards from './Components/graphics/KPIcards.jsx';
import Calendar from './Components/common/calendar.jsx';
import SalesChart from './Components/graphics/SalesChart.jsx';
import RadarChart from './Components/graphics/RadarChart.jsx';
import PieChartComponent from './Components/graphics/PieChartComponent.jsx';

export default function ChangarrosDashboard() {
  const [currentMonth, setCurrentMonth] = useState(new Date(2024, 9));
  const [selectedDay, setSelectedDay] = useState(null);
  const [sidebarOpen, setSidebarOpen] = useState(true);

  // Estados vacíos para datos
  const [ventasPorDia, setVentasPorDia] = useState([]);
  const [ventasHorarias, setVentasHorarias] = useState([]);
  const [tiendas, setTiendas] = useState([]);
  const [inventario, setInventario] = useState([]);
  const [radarData, setRadarData] = useState([]);
  const [ventasDelMes, setVentasDelMes] = useState({});

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
        <div className="p-8">
          <Header />
          
          <KPICards 
            totalVentas={totalVentas}
            totalGanancia={totalGanancia}
            totalTransacciones={totalTransacciones}
            totalClientes={totalClientes}
          />

          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
            <div className="lg:col-span-1">
              <Calendar 
                currentMonth={currentMonth}
                setCurrentMonth={setCurrentMonth}
                selectedDay={selectedDay}
                setSelectedDay={setSelectedDay}
                ventasDelMes={ventasDelMes}
              />
            </div>

            <div className="lg:col-span-2">
              <SalesChart ventasHorarias={ventasHorarias} selectedDay={selectedDay} />
            </div>
          </div>

          <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
            <RadarChart radarData={radarData} selectedDay={selectedDay} />
            <PieChartComponent distribucionVentas={distribucionVentas} />
          </div>

        </div>
      </div>
    </div>
  );
}