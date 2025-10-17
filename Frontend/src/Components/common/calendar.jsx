// components/Calendar.jsx
import React from 'react';

export default function Calendar({ currentMonth, setCurrentMonth, selectedDay, setSelectedDay, ventasDelMes }) {
  const getDaysInMonth = (date) => new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();
  const getFirstDayOfMonth = (date) => new Date(date.getFullYear(), date.getMonth(), 1).getDay();

  const daysInMonth = getDaysInMonth(currentMonth);
  const firstDay = getFirstDayOfMonth(currentMonth);
  const days = [];
  
  for (let i = 0; i < firstDay; i++) days.push(null);
  for (let i = 1; i <= daysInMonth; i++) days.push(i);

  return (
    <div className="bg-white p-6 rounded-2xl shadow-sm border border-teal-100 h-fit">
      <div className="flex justify-between items-center mb-5">
        <button
          onClick={() => setCurrentMonth(new Date(currentMonth.getFullYear(), currentMonth.getMonth() - 1))}
          className="bg-none border-none cursor-pointer text-teal-700 p-2 text-lg hover:bg-teal-50 rounded-lg transition"
        >
          ◀
        </button>
        <h3 className="text-sm font-bold text-teal-700 uppercase tracking-wider">
          {currentMonth.toLocaleString('es-ES', { month: 'long', year: 'numeric' })}
        </h3>
        <button
          onClick={() => setCurrentMonth(new Date(currentMonth.getFullYear(), currentMonth.getMonth() + 1))}
          className="bg-none border-none cursor-pointer text-teal-700 p-2 text-lg hover:bg-teal-50 rounded-lg transition"
        >
          ▶
        </button>
      </div>

      {/* Días de la semana */}
      <div className="grid grid-cols-7 gap-1 mb-3">
        {['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb'].map(d => (
          <div key={d} className="text-center text-xs font-bold text-teal-700">
            {d}
          </div>
        ))}
      </div>

      {/* Días del mes */}
      <div className="grid grid-cols-7 gap-1">
        {days.map((day, i) => {
          const hasData = day && ventasDelMes[day];
          const isSelected = day === selectedDay;

          return (
            <div
              key={i}
              onClick={() => day && setSelectedDay(day)}
              className={`
                p-2.5 text-center rounded-xl text-xs font-semibold transition-all cursor-pointer
                ${isSelected
                  ? 'bg-gradient-to-br from-teal-700 to-teal-600 text-white border-2 border-yellow-300 shadow-md'
                  : hasData
                  ? 'bg-teal-50 text-teal-700 border border-teal-200 hover:bg-teal-100'
                  : day
                  ? 'bg-gray-50 text-teal-700 hover:bg-gray-100'
                  : 'bg-transparent'
                }
              `}
            >
              {day}
            </div>
          );
        })}
      </div>
    </div>
  );
}