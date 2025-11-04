import React from 'react';
import { Users, Trophy, TrendingDown } from 'lucide-react';

const EmployeeSalesChart = ({ data = [] }) => {
  const maxVentas = data.length > 0 ? Math.max(...data.map(e => e.total_ventas)) : 1;

  const getMedalColor = (index) => {
    if (index === 0) return 'from-yellow-400 to-yellow-600';
    if (index === 1) return 'from-gray-300 to-gray-500';
    if (index === 2) return 'from-orange-400 to-orange-600';
    return 'from-blue-400 to-blue-600';
  };

  const getMedalIcon = (index) => {
    if (index < 3) return <Trophy className="text-white" size={20} />;
    return <Users className="text-white" size={20} />;
  };

  return (
    <div className="bg-white rounded-2xl p-6 shadow-xl border border-gray-100">
      <div className="flex items-center gap-3 mb-6">
        <div className="bg-gradient-to-br from-purple-500 to-pink-600 p-3 rounded-xl shadow-lg">
          <Users className="text-white" size={24} />
        </div>
        <div>
          <h3 className="text-xl font-bold text-gray-800">Rendimiento de Empleados</h3>
          <p className="text-sm text-gray-500">Top vendedores de la tienda</p>
        </div>
      </div>
      
      {data.length === 0 ? (
        <div className="h-80 flex items-center justify-center text-gray-400">
          <p>No hay datos disponibles</p>
        </div>
      ) : (
        <div className="space-y-4 max-h-96 overflow-y-auto pr-2">
          {data.map((empleado, index) => {
            const porcentaje = (empleado.total_ventas / maxVentas) * 100;
            
            return (
              <div key={index} className="group hover:scale-105 transition-transform duration-200">
                <div className="flex items-center justify-between mb-2">
                  <div className="flex items-center gap-3">
                    <div className={`bg-gradient-to-br ${getMedalColor(index)} w-10 h-10 rounded-full flex items-center justify-center shadow-lg`}>
                      {getMedalIcon(index)}
                    </div>
                    <div>
                      <p className="font-bold text-gray-800">{empleado.nombre_empleado || `Empleado ${index + 1}`}</p>
                      <p className="text-sm text-gray-500">{empleado.num_ventas || 0} ventas</p>
                    </div>
                  </div>
                  <div className="text-right">
                    <p className="text-xl font-bold text-gray-800">${empleado.total_ventas?.toLocaleString()}</p>
                    <p className="text-xs text-emerald-600 font-semibold">#{index + 1}</p>
                  </div>
                </div>
                <div className="w-full bg-gray-200 rounded-full h-3 overflow-hidden shadow-inner">
                  <div 
                    className="h-full rounded-full bg-gradient-to-r from-purple-500 to-pink-600 transition-all duration-500 shadow-lg"
                    style={{ width: `${porcentaje}%` }}
                  ></div>
                </div>
              </div>
            );
          })}
        </div>
      )}
      
      {data.length > 0 && (
        <div className="mt-6 pt-4 border-t border-gray-200">
          <div className="flex justify-between text-sm">
            <span className="text-gray-600">Total generado:</span>
            <span className="font-bold text-gray-800">
              ${data.reduce((acc, e) => acc + (e.total_ventas || 0), 0).toLocaleString()}
            </span>
          </div>
        </div>
      )}
    </div>
  );
};

export default EmployeeSalesChart;