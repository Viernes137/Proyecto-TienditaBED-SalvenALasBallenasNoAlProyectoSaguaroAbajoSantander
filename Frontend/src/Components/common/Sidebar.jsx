import React, { useState } from 'react';
import { Home, Store, Package, Target, Award, Settings, Menu, ChevronLeft, ShoppingCart, TrendingUp } from 'lucide-react';

function Sidebar({ sidebarOpen, setSidebarOpen }) {
  const menuItems = [
    { icon: Home, label: 'Dashboard', active: true },
    { icon: Store, label: 'Tiendas' },
    { icon: Package, label: 'Inventario' },
    { icon: Target, label: 'Objetivos' },
    { icon: Award, label: 'Reportes' },
    { icon: Settings, label: 'Configuración' }
  ];

  return (
    <div className={`${sidebarOpen ? 'w-80' : 'w-24'} bg-gradient-to-b from-emerald-600 via-teal-600 to-cyan-600 p-6 flex flex-col gap-8 transition-all duration-300 shadow-xl relative overflow-hidden h-screen`}>
      
      {/* Fondo decorativo sutil */}
      <div className="absolute top-0 right-0 w-64 h-64 bg-white/5 rounded-full -mr-32 -mt-32 blur-3xl"></div>
      <div className="absolute bottom-0 left-0 w-64 h-64 bg-white/5 rounded-full -ml-32 -mb-32 blur-3xl"></div>

      {/* Logo Section - Más limpio */}
      <div className={`flex items-center gap-4 relative z-10 transition-all duration-300 ${sidebarOpen ? '' : 'justify-center'}`}>
        <div className="relative group">
          <div className="w-12 h-12 bg-gradient-to-br from-yellow-400 to-orange-500 rounded-xl flex items-center justify-center text-2xl shadow-lg group-hover:shadow-xl transition-shadow">
            🍅
          </div>
        </div>
        {sidebarOpen && (
          <div className="animate-fade-in">
            <h3 className="text-white font-bold text-xl">Changarros</h3>
            <p className="text-emerald-100 text-sm">Tu tiendita de la esquina :D</p>
          </div>
        )}
      </div>

      {/* Menu Items - Más espaciados y limpios */}
      <nav className="flex flex-col gap-2 flex-1 relative z-10">
        {menuItems.map((item, i) => (
          <div
            key={i}
            className={`flex items-center gap-4 px-4 py-3 rounded-xl transition-all duration-200 cursor-pointer group ${
              item.active
                ? 'bg-white/20 text-white shadow-md'
                : 'text-white/80 hover:bg-white/10 hover:text-white'
            }`}
          >
            <item.icon size={20} strokeWidth={item.active ? 2.5 : 2} />
            {sidebarOpen && <span className="text-sm font-medium">{item.label}</span>}
          </div>
        ))}
      </nav>

      {/* Stats Card - Simplificado */}
      {sidebarOpen && (
        <div className="relative z-10 space-y-3">
          <div className="bg-white/15 backdrop-blur-md p-5 rounded-xl border border-white/20 shadow-lg space-y-4">
            <div className="flex items-center gap-3">
              <div className="p-2 bg-yellow-400/20 rounded-lg">
                <ShoppingCart size={20} className="text-yellow-200" />
              </div>
              <div className="flex-1">
                <p className="text-white/70 text-xs font-medium">Ventas Hoy</p>
                <h4 className="text-white font-bold text-xl">$0</h4>
              </div>
            </div>
            
            <div className="flex items-center gap-3">
              <div className="p-2 bg-green-400/20 rounded-lg">
                <TrendingUp size={20} className="text-green-200" />
              </div>
              <div className="flex-1">
                <p className="text-white/70 text-xs font-medium">Tendencia</p>
                <h4 className="text-white font-bold text-xl">+0%</h4>
              </div>
            </div>
          </div>

          {/* Barra de progreso */}
          <div className="space-y-2">
            <div className="flex justify-between items-center">
              <p className="text-white/80 text-xs font-medium">Meta del mes</p>
              <p className="text-white/80 text-xs font-bold">75%</p>
            </div>
            <div className="w-full h-2 bg-white/20 rounded-full overflow-hidden">
              <div className="h-full w-3/4 bg-gradient-to-r from-yellow-400 to-orange-500 rounded-full transition-all duration-500"></div>
            </div>
          </div>
        </div>
      )}

      {/* Toggle Button - Más sutil */}
      <button
        onClick={() => setSidebarOpen(!sidebarOpen)}
        className="bg-white/10 hover:bg-white/20 border border-white/20 text-white p-3 rounded-xl transition-all duration-200 flex items-center justify-center relative z-10 shadow-md"
      >
        {sidebarOpen ? <ChevronLeft size={20} /> : <Menu size={20} />}
      </button>
    </div>
  );
}

export default Sidebar;