import React from 'react';
import { PieChart, Pie, Cell, ResponsiveContainer, Tooltip, Legend } from 'recharts';
import { DollarSign, TrendingUp } from 'lucide-react';

const ProfitDonutChart = ({ data = [] }) => {
  const COLORS = ['#10b981', '#3b82f6', '#f59e0b', '#ef4444', '#8b5cf6', '#ec4899'];
  
  const totalGanancias = data.reduce((acc, item) => acc + (item.ganancia || 0), 0);

  const CustomTooltip = ({ active, payload }) => {
    if (active && payload && payload.length) {
      const porcentaje = ((payload[0].value / totalGanancias) * 100).toFixed(1);
      return (
        <div className="bg-white p-4 rounded-xl shadow-xl border-2 border-emerald-500">
          <p className="font-bold text-gray-800">{payload[0].name}</p>
          <p className="text-emerald-600 font-semibold">${payload[0].value?.toLocaleString()}</p>
          <p className="text-gray-600 text-sm">{porcentaje}% del total</p>
        </div>
      );
    }
    return null;
  };

  const renderCustomLabel = ({ cx, cy, midAngle, innerRadius, outerRadius, percent }) => {
    const radius = innerRadius + (outerRadius - innerRadius) * 0.5;
    const x = cx + radius * Math.cos(-midAngle * Math.PI / 180);
    const y = cy + radius * Math.sin(-midAngle * Math.PI / 180);

    if (percent < 0.05) return null;

    return (
      <text 
        x={x} 
        y={y} 
        fill="white" 
        textAnchor={x > cx ? 'start' : 'end'} 
        dominantBaseline="central"
        className="font-bold text-sm"
      >
        {`${(percent * 100).toFixed(0)}%`}
      </text>
    );
  };

  return (
    <div className="bg-white rounded-2xl p-6 shadow-xl border border-gray-100">
      <div className="flex items-center gap-3 mb-6">
        <div className="bg-gradient-to-br from-emerald-500 to-teal-600 p-3 rounded-xl shadow-lg">
          <DollarSign className="text-white" size={24} />
        </div>
        <div>
          <h3 className="text-xl font-bold text-gray-800">Distribución de Ganancias</h3>
          <p className="text-sm text-gray-500">Por categoría de producto</p>
        </div>
      </div>
      
      {data.length === 0 ? (
        <div className="h-80 flex items-center justify-center text-gray-400">
          <p>No hay datos disponibles</p>
        </div>
      ) : (
        <>
          <ResponsiveContainer width="100%" height={300}>
            <PieChart>
              <Pie
                data={data}
                cx="50%"
                cy="50%"
                labelLine={false}
                label={renderCustomLabel}
                outerRadius={120}
                innerRadius={70}
                fill="#8884d8"
                dataKey="ganancia"
                paddingAngle={2}
              >
                {data.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                ))}
              </Pie>
              <Tooltip content={<CustomTooltip />} />
            </PieChart>
          </ResponsiveContainer>

          {/* Centro del donut con total */}
          <div className="relative -mt-48 mb-32 flex items-center justify-center pointer-events-none">
            <div className="text-center bg-white rounded-full p-4">
              <p className="text-sm text-gray-600 font-medium">Total</p>
              <p className="text-2xl font-bold text-emerald-600">
                ${totalGanancias.toLocaleString()}
              </p>
            </div>
          </div>

          {/* Leyenda personalizada */}
          <div className="grid grid-cols-2 gap-3 mt-4">
            {data.map((item, index) => (
              <div key={index} className="flex items-center gap-2 bg-gray-50 p-3 rounded-lg">
                <div 
                  className="w-4 h-4 rounded-full flex-shrink-0" 
                  style={{ backgroundColor: COLORS[index % COLORS.length] }}
                ></div>
                <div className="min-w-0 flex-1">
                  <p className="text-sm font-semibold text-gray-700 truncate">{item.categoria}</p>
                  <p className="text-xs text-gray-500">${item.ganancia?.toLocaleString()}</p>
                </div>
              </div>
            ))}
          </div>
        </>
      )}
    </div>
  );
};

export default ProfitDonutChart;