import React from 'react';
import { Star, TrendingUp, Package } from 'lucide-react';

const TopProductsChart = ({ data = [], title = "Top 10 Productos Más Vendidos", type = "top" }) => {
  const Icon = type === "top" ? Star : TrendingUp;
  const gradientFrom = type === "top" ? "from-amber-500" : "from-red-500";
  const gradientTo = type === "top" ? "to-orange-600" : "to-rose-600";

  return (
    <div className="bg-white rounded-2xl p-6 shadow-xl border border-gray-100">
      <div className="flex items-center gap-3 mb-6">
        <div className={`bg-gradient-to-br ${gradientFrom} ${gradientTo} p-3 rounded-xl shadow-lg`}>
          <Icon className="text-white" size={24} />
        </div>
        <div>
          <h3 className="text-xl font-bold text-gray-800">{title}</h3>
          <p className="text-sm text-gray-500">Ranking de productos</p>
        </div>
      </div>
      
      {data.length === 0 ? (
        <div className="h-80 flex items-center justify-center text-gray-400">
          <p>No hay datos disponibles</p>
        </div>
      ) : (
        <div className="space-y-3 max-h-96 overflow-y-auto pr-2">
          {data.map((producto, index) => (
            <div 
              key={index} 
              className="group bg-gradient-to-r from-gray-50 to-white hover:from-gray-100 hover:to-gray-50 rounded-xl p-4 transition-all duration-200 border border-gray-100 hover:shadow-lg"
            >
              <div className="flex items-center gap-4">
                <div className="flex-shrink-0">
                  <div className={`w-12 h-12 rounded-full bg-gradient-to-br ${gradientFrom} ${gradientTo} flex items-center justify-center text-white font-bold text-lg shadow-lg`}>
                    {index + 1}
                  </div>
                </div>
                
                <div className="flex-grow min-w-0">
                  <h4 className="font-bold text-gray-800 truncate group-hover:text-orange-600 transition-colors">
                    {producto.nombre_producto || `Producto ${index + 1}`}
                  </h4>
                  <div className="flex items-center gap-4 mt-1">
                    <span className="text-sm text-gray-600">
                      <Package className="inline w-4 h-4 mr-1" />
                      {producto.cantidad_vendida || 0} vendidos
                    </span>
                    <span className="text-sm text-emerald-600 font-semibold">
                      ${producto.total_generado?.toLocaleString() || '0'}
                    </span>
                  </div>
                </div>
                
                <div className="flex-shrink-0 text-right">
                  <div className="text-2xl font-bold text-gray-800">
                    ${producto.precio_venta?.toFixed(2) || '0.00'}
                  </div>
                  <div className="text-xs text-gray-500">precio unit.</div>
                </div>
              </div>
              
              {/* Barra de progreso */}
              <div className="mt-3 w-full bg-gray-200 rounded-full h-2 overflow-hidden">
                <div 
                  className={`h-full rounded-full bg-gradient-to-r ${gradientFrom} ${gradientTo} transition-all duration-500`}
                  style={{ 
                    width: `${Math.min(100, (producto.cantidad_vendida / Math.max(...data.map(p => p.cantidad_vendida || 1))) * 100)}%` 
                  }}
                ></div>
              </div>
            </div>
          ))}
        </div>
      )}
      
      {data.length > 0 && (
        <div className="mt-6 pt-4 border-t border-gray-200 grid grid-cols-2 gap-4">
          <div className="text-center">
            <p className="text-sm text-gray-600">Total Unidades</p>
            <p className="text-xl font-bold text-gray-800">
              {data.reduce((acc, p) => acc + (p.cantidad_vendida || 0), 0)}
            </p>
          </div>
          <div className="text-center">
            <p className="text-sm text-gray-600">Total Generado</p>
            <p className="text-xl font-bold text-emerald-600">
              ${data.reduce((acc, p) => acc + (p.total_generado || 0), 0).toLocaleString()}
            </p>
          </div>
        </div>
      )}
    </div>
  );
};

export default TopProductsChart;