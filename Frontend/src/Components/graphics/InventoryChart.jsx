import React from 'react';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, Cell } from 'recharts';
import { Package } from 'lucide-react';

const InventoryChart = ({ data = [] }) => {
  const COLORS = ['#10b981', '#3b82f6', '#f59e0b', '#ef4444', '#8b5cf6', '#ec4899', '#14b8a6', '#f97316'];

  const CustomTooltip = ({ active, payload }) => {
    if (active && payload && payload.length) {
      return (
        <div className="bg-white p-4 rounded-xl shadow-lg border-2 border-emerald-500">
          <p className="font-bold text-gray-800">{payload[0].payload.categoria}</p>
          <p className="text-emerald-600">Stock: {payload[0].value} unidades</p>
          <p className="text-gray-600 text-sm">Valor: ${payload[0].payload.valor?.toLocaleString()}</p>
        </div>
      );
    }
    return null;
  };

  return (
    <div className="bg-white rounded-2xl p-6 shadow-xl border border-gray-100">
      <div className="flex items-center gap-3 mb-6">
        <div className="bg-gradient-to-br from-emerald-500 to-teal-600 p-3 rounded-xl shadow-lg">
          <Package className="text-white" size={24} />
        </div>
        <div>
          <h3 className="text-xl font-bold text-gray-800">Inventario por Categoría</h3>
          <p className="text-sm text-gray-500">Stock disponible en tienda</p>
        </div>
      </div>
      
      {data.length === 0 ? (
        <div className="h-80 flex items-center justify-center text-gray-400">
          <p>No hay datos disponibles</p>
        </div>
      ) : (
        <ResponsiveContainer width="100%" height={350}>
          <BarChart data={data} margin={{ top: 20, right: 30, left: 20, bottom: 5 }}>
            <defs>
              {data.map((_, index) => (
                <linearGradient key={index} id={`colorGradient${index}`} x1="0" y1="0" x2="0" y2="1">
                  <stop offset="0%" stopColor={COLORS[index % COLORS.length]} stopOpacity={0.9}/>
                  <stop offset="100%" stopColor={COLORS[index % COLORS.length]} stopOpacity={0.6}/>
                </linearGradient>
              ))}
            </defs>
            <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
            <XAxis 
              dataKey="categoria" 
              stroke="#6b7280"
              tick={{ fill: '#6b7280', fontSize: 12 }}
              angle={-15}
              textAnchor="end"
              height={80}
            />
            <YAxis stroke="#6b7280" tick={{ fill: '#6b7280' }} />
            <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(16, 185, 129, 0.1)' }} />
            <Bar dataKey="stock" radius={[12, 12, 0, 0]} barSize={50}>
              {data.map((entry, index) => (
                <Cell key={`cell-${index}`} fill={`url(#colorGradient${index})`} />
              ))}
            </Bar>
          </BarChart>
        </ResponsiveContainer>
      )}
    </div>
  );
};

export default InventoryChart;