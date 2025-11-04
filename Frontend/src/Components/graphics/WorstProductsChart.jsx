import React from 'react';
import { AlertCircle, TrendingDown } from 'lucide-react';

const WorstProductsChart = ({ data = [] }) => {
  return (
    <div className="bg-white rounded-2xl p-6 shadow-xl border border-gray-100">
      <div className="flex items-center gap-3 mb-6">
        <div className="bg-gradient-to-br from-red-500 to-rose-600 p-3 rounded-xl shadow-lg">
          <TrendingDown className="text-white" size={24} />
        </div>
        <div>
          <h3 className="text-xl font-bold text-gray-800">Top 3 Productos con Bajas Ventas</h3>
          <p className="text-sm text-gray-500">Productos que requieren atención</p>
        </div>
      </div>
      
      {data.length === 0 ? (
        <div className="h-64 flex items-center justify-center text-gray-400">
          <p>No hay datos disponibles</p>
        </div>
      ) : (
        <div className="space-y-4">
          {data.slice(0, 3).map((producto, index) => (
            <div 
              key={index}
              className="group bg-gradient-to-r from-red-50 to-rose-50 hover:from-red-100 hover:to-rose-100 rounded-xl p-5 transition-all duration-200 border-2 border-red-200 hover:border-red-300"
            >
              <div className="flex items-start gap-4">
                <div className="flex-shrink-0">
                  <div className="w-14 h-14 rounded-full bg-gradient-to-br from-red-500 to-rose-600 flex items-center justify-center text-white font-bold text-xl shadow-lg">
                    <AlertCircle size={28} />
                  </div>
                </div>
                
                <div className="flex-grow min-w-0">
                  <div className="flex items-start justify-between mb-2">
                    <h4 className="font-bold text-gray-800 text-lg group-hover:text-red-600 transition-colors">
                      {producto.nombre_producto || `Producto ${index + 1}`}
                    </h4>
                    <span className="bg-red-100 text-red-700 px-3 py-1 rounded-full text-xs font-bold">
                      #{index + 1}
                    </span>
                  </div>
                  
                  <div className="grid grid-cols-3 gap-4 mt-3">
                    <div className="bg-white rounded-lg p-3 shadow-sm">
                      <p className="text-xs text-gray-600 mb-1">Vendidos</p>
                      <p className="text-lg font-bold text-red-600">
                        {producto.cantidad_vendida || 0}
                      </p>
                    </div>
                    
                    <div className="bg-white rounded-lg p-3 shadow-sm">
                      <p className="text-xs text-gray-600 mb-1">Stock</p>
                      <p className="text-lg font-bold text-gray-800">
                        {producto.stock_actual || 0}
                      </p>
                    </div>
                    
                    <div className="bg-white rounded-lg p-3 shadow-sm">
                      <p className="text-xs text-gray-600 mb-1">Precio</p>
                      <p className="text-lg font-bold text-emerald-600">
                        ${producto.precio_venta?.toFixed(2) || '0.00'}
                      </p>
                    </div>
                  </div>

                  {/* Indicador de rotación */}
                  <div className="mt-3">
                    <div className="flex items-center justify-between mb-1">
                      <span className="text-xs text-gray-600">Rotación</span>
                      <span className="text-xs font-semibold text-red-600">Baja</span>
                    </div>
                    <div className="w-full bg-gray-200 rounded-full h-2">
                      <div 
                        className="h-full rounded-full bg-gradient-to-r from-red-500 to-rose-600"
                        style={{ 
                          width: `${Math.min(100, ((producto.cantidad_vendida || 0) / (producto.stock_actual || 1)) * 100)}%` 
                        }}
                      ></div>
                    </div>
                  </div>
                </div>
              </div>

              {/* Recomendación */}
              <div className="mt-4 pt-4 border-t border-red-200">
                <div className="flex items-start gap-2">
                  <AlertCircle className="text-red-500 flex-shrink-0 mt-0.5" size={16} />
                  <p className="text-xs text-gray-700">
                    <span className="font-semibold">Recomendación:</span> Considerar promoción o ajuste de precio para mejorar rotación
                  </p>
                </div>
              </div>
            </div>
          ))}

          {/* Resumen */}
          {data.length > 0 && (
            <div className="mt-6 p-4 bg-gradient-to-r from-gray-50 to-gray-100 rounded-xl border border-gray-200">
              <div className="flex items-center justify-between">
                <span className="text-sm text-gray-700">
                  Total acumulado en inventario de baja rotación:
                </span>
                <span className="text-lg font-bold text-red-600">
                  ${data.slice(0, 3).reduce((acc, p) => acc + ((p.precio_venta || 0) * (p.stock_actual || 0)), 0).toLocaleString()}
                </span>
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  );
};

export default WorstProductsChart;