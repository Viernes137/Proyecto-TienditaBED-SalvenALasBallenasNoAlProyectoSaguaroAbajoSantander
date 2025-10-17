// components/KPICards.jsx
import React from 'react';
import { TrendingUp, Package, Users, Store } from 'lucide-react';

export default function KPICards({ totalVentas, totalGanancia, totalTransacciones, totalClientes }) {
  const cards = [
    {
      icon: TrendingUp,
      titulo: 'Ventas Totales',
      valor: `$${totalVentas.toLocaleString()}`,
      subtitulo: '+0% vs semana anterior',
      color: 'teal',
      bgColor: 'bg-teal-50',
      borderColor: 'border-l-teal-600'
    },
    {
      icon: Package,
      titulo: 'Ganancia Neta',
      valor: `$${totalGanancia.toLocaleString()}`,
      subtitulo: 'Margen 0%',
      color: 'yellow',
      bgColor: 'bg-yellow-50',
      borderColor: 'border-l-yellow-400'
    },
    {
      icon: Users,
      titulo: 'Transacciones',
      valor: totalTransacciones,
      subtitulo: '+0% this week',
      color: 'orange',
      bgColor: 'bg-orange-50',
      borderColor: 'border-l-orange-500'
    },
    {
      icon: Store,
      titulo: 'Clientes',
      valor: totalClientes,
      subtitulo: 'Promedio 0 por día',
      color: 'red',
      bgColor: 'bg-red-50',
      borderColor: 'border-l-orange-600'
    }
  ];

  const colorMap = {
    teal: { text: 'text-teal-700', bg: 'bg-teal-100', icon: 'text-teal-700' },
    yellow: { text: 'text-yellow-500', bg: 'bg-yellow-100', icon: 'text-yellow-500' },
    orange: { text: 'text-orange-600', bg: 'bg-orange-100', icon: 'text-orange-600' },
    red: { text: 'text-red-600', bg: 'bg-red-100', icon: 'text-red-600' }
  };

  return (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-5 mb-8">
      {cards.map((card, i) => {
        const colors = colorMap[card.color];
        return (
          <div
            key={i}
            className={`${card.bgColor} p-6 rounded-2xl shadow-sm border-l-4 ${card.borderColor} transition-all hover:shadow-md`}
          >
            <div className="flex justify-between items-start">
              <div className="flex-1">
                <p className="text-gray-600 text-xs font-bold uppercase tracking-wider mb-2">
                  {card.titulo}
                </p>
                <h2 className={`${colors.text} text-2xl font-black mb-2`}>
                  {card.valor}
                </h2>
                <p className="text-gray-500 text-xs">{card.subtitulo}</p>
              </div>
              <div className={`${colors.bg} w-14 h-14 rounded-xl flex items-center justify-center`}>
                <card.icon size={28} className={colors.icon} />
              </div>
            </div>
          </div>
        );
      })}
    </div>
  );
}