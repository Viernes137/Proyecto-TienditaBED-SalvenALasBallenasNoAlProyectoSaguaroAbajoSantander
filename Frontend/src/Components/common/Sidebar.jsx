import React, { useState, useEffect } from 'react';
import { Home, Store, Package, Target, Award, Settings, Menu, ChevronLeft, ShoppingCart, TrendingUp, ChevronDown, ChevronRight } from 'lucide-react';
import Formulario from '../common/Formulario';

function Sidebar({ sidebarOpen, setSidebarOpen }) {
  const [tiendasOpen, setTiendasOpen] = useState(false);
  const [tiendas, setTiendas] = useState([]);
  const [consultaTiendas, setConsultaTiendas] = useState(null);
  const [tiendaActiva, setTiendaActiva] = useState(null);

  const menuItems = [
    { icon: Home, label: 'Dashboard', active: true, id: 'dashboard' },
    { 
      icon: Store, 
      label: 'Tiendas', 
      id: 'tiendas',
      hasSubmenu: true 
    },
  ];

  // Cuando se presiona "Tiendas", hacer la consulta
  const handleTiendasClick = () => {
    if (!tiendasOpen && tiendas.length === 0) {
      // Solo hacer la consulta si no tenemos tiendas cargadas
      setConsultaTiendas("SELECT * FROM tiendas");
    }
    setTiendasOpen(!tiendasOpen);
  };

  // Manejar el resultado de la consulta
  const handleResultadoTiendas = (resultado) => {
    setTiendas(resultado);
  };

  return (
    <>
      {/* Componente Formulario para hacer la consulta */}
      <Formulario 
        consulta={consultaTiendas} 
        onResultado={handleResultadoTiendas}
      />

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
            <div key={i}>
              {/* Item principal */}
              <div
                onClick={() => item.hasSubmenu && handleTiendasClick()}
                className={`flex items-center gap-4 px-4 py-3 rounded-xl transition-all duration-200 cursor-pointer group ${
                  item.active && !item.hasSubmenu
                    ? 'bg-white/20 text-white shadow-md'
                    : 'text-white/80 hover:bg-white/10 hover:text-white'
                }`}
              >
                <item.icon size={20} strokeWidth={item.active ? 2.5 : 2} />
                {sidebarOpen && (
                  <>
                    <span className="text-sm font-medium flex-1">{item.label}</span>
                    {item.hasSubmenu && (
                      tiendasOpen ? <ChevronDown size={16} /> : <ChevronRight size={16} />
                    )}
                  </>
                )}
              </div>

              {/* Submenu de tiendas */}
              {item.hasSubmenu && tiendasOpen && sidebarOpen && (
                <div className="ml-4 mt-2 space-y-1 animate-fade-in">
                  {tiendas.length === 0 ? (
                    <div className="px-4 py-2 text-white/60 text-sm">
                      Cargando tiendas...
                    </div>
                  ) : (
                    tiendas.map((tienda, index) => (
                      <div
                        key={tienda.id || index}
                        onClick={() => setTiendaActiva(tienda.id)}
                        className={`flex items-center gap-3 px-4 py-2 rounded-lg transition-all duration-200 cursor-pointer ${
                          tiendaActiva === tienda.id
                            ? 'bg-white/20 text-white'
                            : 'text-white/70 hover:bg-white/10 hover:text-white'
                        }`}
                      >
                        <div className="w-2 h-2 rounded-full bg-white/50"></div>
                        <span className="text-sm">
                          {tienda.nombre || tienda.name || `Tienda ${index + 1}`}
                        </span>
                      </div>
                    ))
                  )}
                </div>
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
    </>
  );
}

export default Sidebar;