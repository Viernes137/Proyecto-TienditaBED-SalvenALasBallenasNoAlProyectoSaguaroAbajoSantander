import React from 'react';
import { Home, Store, Menu, ChevronLeft } from 'lucide-react';

function Sidebar({ sidebarOpen, setSidebarOpen, onNavigate, vistaActual }) {
  const menuItems = [
    { icon: Home, label: 'Dashboard', id: 'dashboard' },
    { icon: Store, label: 'Tiendas', id: 'tiendas' }
  ];

  const handleMenuClick = (itemId) => {
    onNavigate(itemId);
  };

  return (
    <div className={`${sidebarOpen ? 'w-80' : 'w-24'} bg-gradient-to-b from-emerald-600 via-teal-600 to-cyan-600 p-6 flex flex-col gap-8 transition-all duration-300 shadow-xl relative overflow-hidden h-screen`}>
      
      {/* Fondo decorativo sutil */}
      <div className="absolute top-0 right-0 w-64 h-64 bg-white/5 rounded-full -mr-32 -mt-32 blur-3xl"></div>
      <div className="absolute bottom-0 left-0 w-64 h-64 bg-white/5 rounded-full -ml-32 -mb-32 blur-3xl"></div>

      {/* Logo Section */}
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

      {/* Menu Items */}
      <nav className="flex flex-col gap-2 flex-1 relative z-10 overflow-y-auto">
        {menuItems.map((item, i) => (
          <div
            key={i}
            onClick={() => handleMenuClick(item.id)}
            className={`flex items-center gap-4 px-4 py-3 rounded-xl transition-all duration-200 cursor-pointer group ${
              vistaActual === item.id
                ? 'bg-white/20 text-white shadow-md'
                : 'text-white/80 hover:bg-white/10 hover:text-white'
            }`}
          >
            <item.icon size={20} strokeWidth={vistaActual === item.id ? 2.5 : 2} />
            {sidebarOpen && (
              <span className="text-sm font-medium flex-1">{item.label}</span>
            )}
          </div>
        ))}
      </nav>

      {/* Toggle Button */}
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