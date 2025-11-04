import React, { useState } from 'react';
import Sidebar from '../common/sidebar.jsx';
import Header from '../common/header.jsx';
import KPICards from '../graphics/KPIcards.jsx';
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
          <div className="min-h-screen">
            {/* Header Section */}
            <div className="mb-8">
              <Header />
            </div>

            {/* KPI Cards Section */}
            <div className="mb-10">
              <KPICards />
            </div>

            {/* Main Content Grid */}
            <div className="space-y-8">
              
              {/* Top Products - Full Width */}
              <div className="w-full">
                <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                  <TopProductos />
                </div>
              </div>

              {/* Bubble Chart - Full Width */}
              <div className="w-full">
                <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                  <GraficaBurbujas />
                </div>
              </div>

              {/* Two Column Section: Heatmap & Polar */}
              <div className="grid grid-cols-1 xl:grid-cols-2 gap-8">
                <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                  <HeatmapVentas />
                </div>
                <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                  <PolarChartVentas />
                </div>
              </div>

              {/* Stream Graph - Full Width */}
              <div className="w-full">
                <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                  <StreamGraphCategorias />
                </div>
              </div>

            </div>
          </div>
        );
      
      case 'tiendas':
        return <Tiendas />;
      
      default:
        return (
          <div className="min-h-screen">
            <div className="mb-8">
              <Header />
            </div>
            <KPICards />
          </div>
        );
    }
  };

  return (
    <div className="flex bg-gradient-to-br from-orange-50 via-amber-50 to-yellow-50 min-h-screen font-system">
      <Sidebar 
        sidebarOpen={sidebarOpen} 
        setSidebarOpen={setSidebarOpen}
        onNavigate={handleNavigate}
        vistaActual={vistaActual}
      />
      
      <div className="flex-1 overflow-y-auto h-screen">
        <div className="max-w-[1800px] mx-auto px-6 sm:px-8 lg:px-12 py-8">
          {renderVista()}
        </div>
      </div>
    </div>
  );
}