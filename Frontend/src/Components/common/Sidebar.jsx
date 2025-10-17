// components/Sidebar.jsx
import React from 'react';
import { Home, Store, Package, Target, Award, Settings, Menu, ChevronLeft, Zap, TrendingUp, ShoppingCart } from 'lucide-react';

export default function Sidebar({ sidebarOpen, setSidebarOpen }) {
  const menuItems = [
    { icon: Home, label: 'Dashboard', active: true },
    { icon: Store, label: 'Tiendas' },
    { icon: Package, label: 'Inventario' },
    { icon: Target, label: 'Objetivos' },
    { icon: Award, label: 'Reportes' },
    { icon: Settings, label: 'Configuración' }
  ];

  return (
    <div className={`${sidebarOpen ? 'w-80' : 'w-24'} bg-gradient-to-b from-emerald-600 via-teal-600 to-cyan-600 p-6 flex flex-col gap-6 transition-all duration-300 shadow-2xl relative overflow-hidden h-screen`}>
      {/* Decorative animated background elements */}
      <div className="absolute top-10 right-0 w-80 h-80 bg-gradient-radial from-yellow-400/15 to-transparent rounded-full -mr-40 pointer-events-none blur-3xl"></div>
      <div className="absolute bottom-20 left-0 w-64 h-64 bg-gradient-radial from-orange-400/10 to-transparent rounded-full -ml-32 pointer-events-none blur-3xl"></div>

      {/* Logo Section */}
      <div className={`flex items-center gap-4 pb-6 border-b-2 border-white/20 relative z-10 transition-all duration-300 ${sidebarOpen ? '' : 'justify-center'}`}>
        <div className="relative">
          <div className="absolute inset-0 bg-gradient-to-br from-yellow-300 to-orange-500 rounded-2xl blur-lg opacity-75"></div>
          <div className="relative w-14 h-14 bg-gradient-to-br from-yellow-300 to-orange-500 rounded-2xl flex items-center justify-center text-white text-3xl font-black shadow-xl transform hover:scale-110 transition-transform">
            🍅
          </div>
        </div>
        {sidebarOpen && (
          <div className="animate-fade-in">
            <h3 className="text-white font-black text-lg tracking-tight">Changarros</h3>
            <p className="text-emerald-100 text-xs font-semibold">Tu tiendita de la esquina :D</p>
          </div>
        )}
      </div>

      {/* Menu Items */}
      <nav className="flex flex-col gap-3 flex-1 relative z-10">
        {menuItems.map((item, i) => (
          <div
            key={i}
            className={`flex items-center gap-3.5 px-4 py-3.5 rounded-2xl transition-all duration-300 cursor-pointer group relative overflow-hidden ${
              item.active
                ? 'bg-white/15 text-white border-2 border-white/40 font-bold shadow-lg backdrop-blur-md'
                : 'text-white/70 bg-white/5 border border-white/10 hover:bg-white/10 hover:text-white backdrop-blur-sm'
            }`}
          >
            {/* Shine effect on hover */}
            <div className="absolute inset-0 bg-gradient-to-r from-transparent via-white to-transparent opacity-0 group-hover:opacity-10 translate-x-[-100%] group-hover:translate-x-[100%] transition-all duration-500"></div>
            
            <item.icon size={22} strokeWidth={item.active ? 2.5 : 2} className="relative z-10" />
            {sidebarOpen && <span className="text-sm font-medium relative z-10">{item.label}</span>}
          </div>
        ))}
      </nav>

      {/* Stats Card - Enhanced */}
      {sidebarOpen && (
        <div className="relative z-10 space-y-4">
          <div className="bg-gradient-to-br from-white/20 to-white/5 backdrop-blur-xl p-4 rounded-2xl border border-white/30 shadow-xl hover:shadow-2xl transition-shadow">
            <div className="flex gap-3 mb-4 pb-4 border-b border-white/20">
              <div className="p-2.5 bg-gradient-to-br from-yellow-300/30 to-orange-500/20 rounded-xl">
                <ShoppingCart size={18} className="text-yellow-200" />
              </div>
              <div>
                <p className="text-white/80 text-xs font-bold uppercase tracking-wider">Ventas Hoy</p>
                <h4 className="text-yellow-200 font-black text-lg">$0</h4>
              </div>
            </div>
            <div className="flex gap-3">
              <div className="p-2.5 bg-gradient-to-br from-green-300/30 to-emerald-500/20 rounded-xl">
                <TrendingUp size={18} className="text-green-200" />
              </div>
              <div>
                <p className="text-white/80 text-xs font-bold uppercase tracking-wider">Tendencia</p>
                <h4 className="text-green-200 font-black text-lg">+0%</h4>
              </div>
            </div>
          </div>

          {/* Mini progress bar */}
          <div className="space-y-2">
            <p className="text-white/70 text-xs font-bold uppercase">Meta del mes</p>
            <div className="w-full h-2 bg-white/20 rounded-full overflow-hidden">
              <div className="h-full w-3/4 bg-gradient-to-r from-yellow-300 to-orange-500 rounded-full"></div>
            </div>
            <p className="text-white/60 text-xs text-right font-semibold"></p>
          </div>
        </div>
      )}

      {/* Toggle Button */}
      <button
        onClick={() => setSidebarOpen(!sidebarOpen)}
        className="bg-white/15 border-2 border-white/30 text-white p-3 rounded-xl cursor-pointer flex items-center justify-center transition-all duration-300 hover:bg-white/25 hover:border-white/50 relative z-10 backdrop-blur-sm shadow-lg group"
      >
        <div className="absolute inset-0 rounded-xl bg-gradient-to-r from-yellow-400/0 via-white/0 to-orange-500/0 group-hover:from-yellow-400/20 group-hover:via-white/10 group-hover:to-orange-500/20 transition-all"></div>
        {sidebarOpen ? <ChevronLeft size={20} className="relative z-10" /> : <Menu size={20} className="relative z-10" />}
      </button>
    </div>
  );
}