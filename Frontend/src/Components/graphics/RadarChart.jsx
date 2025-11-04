// components/RadarChart.jsx
import React from 'react';
import { RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis, Radar, ResponsiveContainer } from 'recharts';

export default function RadarChartComponent({ radarData, selectedDay }) {
  return (
    <div className="bg-white p-6 rounded-2xl shadow-sm border border-teal-100">
      {radarData.length > 0 ? (
        <>
          <h3 className="text-base font-bold text-teal-700 mb-5">
             Métricas Día {selectedDay || 'N/A'}
          </h3>
          <ResponsiveContainer width="100%" height={280}>
            <RadarChart data={radarData}>
              <PolarGrid stroke="#f0f0f0" />
              <PolarAngleAxis dataKey="categoria" fontSize={12} />
              <PolarRadiusAxis angle={90} domain={[0, 150]} fontSize={12} />
              <Radar name="Rendimiento" dataKey="A" stroke="#0A7368" fill="#0A7368" fillOpacity={0.6} />
            </RadarChart>
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