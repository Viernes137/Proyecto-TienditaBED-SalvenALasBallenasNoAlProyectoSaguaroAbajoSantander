// components/PieChartComponent.jsx
import React from 'react';
import { PieChart, Pie, Cell, Tooltip, ResponsiveContainer } from 'recharts';

export default function PieChartComponent({ distribucionVentas }) {
  const colors = ['#0A7368', '#F2CA50', '#F28705', '#D95204'];

  return (
    <div className="bg-white p-6 rounded-2xl shadow-sm border border-yellow-100">
      {distribucionVentas.length > 0 ? (
        <>
          <h3 className="text-base font-bold text-orange-600 mb-5">
            🏪 Distribución por Tienda
          </h3>
          <ResponsiveContainer width="100%" height={280}>
            <PieChart>
              <Pie
                data={distribucionVentas}
                cx="50%"
                cy="50%"
                labelLine={false}
                label={({ name, value }) => `${name}`}
                outerRadius={90}
                fill="#8884d8"
                dataKey="value"
              >
                {distribucionVentas.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={colors[index % colors.length]} />
                ))}
              </Pie>
              <Tooltip contentStyle={{ background: '#fff', border: '2px solid #F28705', borderRadius: '12px' }} />
            </PieChart>
          </ResponsiveContainer>
        </>
      ) : (
        <div className="h-80 flex items-center justify-center">
          <p className="text-gray-400 text-center">Sin datos para mostrar</p>
        </div>
      )}
    </div>
  );
}