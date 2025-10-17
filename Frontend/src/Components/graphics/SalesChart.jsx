// components/SalesChart.jsx
import React from 'react';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from 'recharts';

export default function SalesChart({ ventasHorarias, selectedDay }) {
  return (
    <div className="bg-white p-6 rounded-2xl shadow-sm border border-yellow-100">
      {ventasHorarias.length > 0 ? (
        <>
          <h3 className="text-base font-bold text-teal-700 mb-4">
            📈 Ventas por Hora - Día {selectedDay || 'N/A'}
          </h3>
          <ResponsiveContainer width="100%" height={300}>
            <BarChart data={ventasHorarias}>
              <defs>
                <linearGradient id="colorBar" x1="0" y1="0" x2="0" y2="1">
                  <stop offset="0%" stopColor="#F2CA50" stopOpacity={0.9} />
                  <stop offset="100%" stopColor="#F28705" stopOpacity={0.6} />
                </linearGradient>
              </defs>
              <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" vertical={false} />
              <XAxis dataKey="hora" stroke="#999" fontSize={12} />
              <YAxis stroke="#999" fontSize={12} />
              <Tooltip contentStyle={{ background: '#fff', border: '2px solid #F2CA50', borderRadius: '12px' }} />
              <Bar dataKey="ventas" fill="url(#colorBar)" radius={[10, 10, 0, 0]} />
            </BarChart>
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