import React from 'react';
import { AreaChart, Area, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from 'recharts';
import { TrendingUp } from 'lucide-react';

const SalesTrendChart = ({ data = [] }) => {
  const CustomTooltip = ({ active, payload }) => {
    if (active && payload && payload.length) {
      return (
        <div className="bg-white p-4 rounded-xl shadow-xl border-2 border-blue-500">
          <p className="font-bold text-gray-800">{payload[0].payload.periodo}</p>
          <p className="text-blue-600 font-semibold">Ventas: ${payload[0].value?.toLocaleString()}</p>
          {payload[0].payload.cantidad && (
            <p className="text-gray-600 text-sm">Cantidad: {payload[0].payload.cantidad} productos</p>
          )}
        </div>
      );
    }
    return null;
  };

  return (
    <div className="bg-white rounded-2xl p-6 shadow-xl border border-gray-100">
      <div className="flex items-center gap-3 mb-6">
        <div className="bg-gradient-to-br from-blue-500 to-indigo-600 p-3 rounded-xl shadow-lg">
          <TrendingUp className="text-white" size={24} />
        </div>
        <div>
          <h3 className="text-xl font-bold text-gray-800">Tendencia de Ventas</h3>
          <p className="text-sm text-gray-500">Evolución en el tiempo</p>
        </div>
      </div>
      
      {data.length === 0 ? (
        <div className="h-80 flex items-center justify-center text-gray-400">
          <p>No hay datos disponibles</p>
        </div>
      ) : (
        <ResponsiveContainer width="100%" height={350}>
          <AreaChart data={data} margin={{ top: 20, right: 30, left: 20, bottom: 5 }}>
            <defs>
              <linearGradient id="colorVentas" x1="0" y1="0" x2="0" y2="1">
                <stop offset="5%" stopColor="#3b82f6" stopOpacity={0.8}/>
                <stop offset="95%" stopColor="#3b82f6" stopOpacity={0.1}/>
              </linearGradient>
            </defs>
            <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
            <XAxis 
              dataKey="periodo" 
              stroke="#6b7280"
              tick={{ fill: '#6b7280', fontSize: 12 }}
            />
            <YAxis 
              stroke="#6b7280" 
              tick={{ fill: '#6b7280' }}
              tickFormatter={(value) => `$${value.toLocaleString()}`}
            />
            <Tooltip content={<CustomTooltip />} />
            <Area 
              type="monotone" 
              dataKey="total_ventas" 
              stroke="#3b82f6" 
              strokeWidth={3}
              fillOpacity={1} 
              fill="url(#colorVentas)"
              dot={{ fill: '#3b82f6', r: 5 }}
              activeDot={{ r: 8, fill: '#1d4ed8' }}
            />
          </AreaChart>
        </ResponsiveContainer>
      )}
    </div>
  );
};

export default SalesTrendChart;