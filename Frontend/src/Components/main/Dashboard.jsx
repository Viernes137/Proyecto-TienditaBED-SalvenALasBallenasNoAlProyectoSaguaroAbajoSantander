// ChangarrosDashboard.jsx
import React, { useState } from 'react';
import Sidebar from '../common/sidebar.jsx';
import Header from '../common/header.jsx';
import KPICards from '../graphics/KPIcards.jsx'; // Ya no necesita props
import GraficaBurbujas from '../graphics/Burbuja.jsx';
import StreamGraphCategorias from '../graphics/StreamGraphCategorias.jsx';
import HeatmapVentas from '../graphics/HeatmapVentas.jsx';
import PolarChartVentas from '../graphics/PolarChartVentas.jsx';
import TopProductos from '../graphics/TopProductos.jsx';
import Tiendas from './Tiendas.jsx';

export default function ChangarrosDashboard() {
  const [sidebarOpen, setSidebarOpen] = useState(true);
  const [vistaActual, setVistaActual] = useState('dashboard');

  const handleNavigate = (vista) => {
    setVistaActual(vista);
  };

  const renderVista = () => {
    switch(vistaActual) {
      case 'dashboard':
        return (
          <>
            <Header />
            
            {/* KPICards ahora maneja sus propias consultas */}
            <KPICards />

            <div className="mt-6">
              <GraficaBurbujas />
            </div>

            <div className="mt-6">
              <TopProductos />
            </div>

            <div className="mt-6 grid grid-cols-1 lg:grid-cols-2 gap-6">
              <HeatmapVentas />
              <PolarChartVentas />
            </div>

            <div className="mt-6">
              <StreamGraphCategorias />
            </div>
          </>
        );
      
      case 'tiendas':
        return <Tiendas />;
      
      default:
        return (
          <>
            <Header />
            <KPICards />
          </>
        );
    }
  };

  return (
    <div className="flex bg-gradient-to-br from-orange-50 to-yellow-50 min-h-screen font-system">
      <Sidebar 
        sidebarOpen={sidebarOpen} 
        setSidebarOpen={setSidebarOpen}
        onNavigate={handleNavigate}
        vistaActual={vistaActual}
      />
      
      <div className="flex-1 overflow-y-auto">
        <div className="p-4 sm:p-6 lg:p-8">
          {renderVista()}
        </div>
      </div>
    </div>
  );
}