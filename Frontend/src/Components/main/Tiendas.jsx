import React, { useState, useEffect } from 'react';
import { Store, TrendingUp, ShoppingCart, DollarSign, Package, ChevronDown } from 'lucide-react';
import Formulario from '../common/Formulario';
import InventoryChart from '../graphics/InventoryChart';
import SalesTrendChart from '../graphics/SalesTrendChart';
import EmployeeSalesChart from '../graphics/EmployeeSalesChart';
import TopProductsChart from '../graphics/TopProductsChart';
import ProfitDonutChart from '../graphics/ProfitDonutChart';
import WorstProductsChart from '../graphics/WorstProductsChart';

function Tiendas() {
  const [tiendaSeleccionada, setTiendaSeleccionada] = useState(null);
  const [tiendas, setTiendas] = useState([]);
  
  // Estados para las consultas
  const [consultaTiendas, setConsultaTiendas] = useState(null);
  const [consultaEstadisticas, setConsultaEstadisticas] = useState(null);
  const [consultaInventario, setConsultaInventario] = useState(null);
  const [consultaVentas, setConsultaVentas] = useState(null);
  const [consultaEmpleados, setConsultaEmpleados] = useState(null);
  const [consultaTopProductos, setConsultaTopProductos] = useState(null);
  const [consultaWorstProductos, setConsultaWorstProductos] = useState(null);
  const [consultaGanancias, setConsultaGanancias] = useState(null);
  
  // Estados para los datos
  const [estadisticas, setEstadisticas] = useState(null);
  const [datosInventario, setDatosInventario] = useState([]);
  const [datosVentas, setDatosVentas] = useState([]);
  const [datosEmpleados, setDatosEmpleados] = useState([]);
  const [datosTopProductos, setDatosTopProductos] = useState([]);
  const [datosWorstProductos, setDatosWorstProductos] = useState([]);
  const [datosGanancias, setDatosGanancias] = useState([]);
  
  const [cargando, setCargando] = useState(true);

  // Cargar lista de tiendas al montar el componente
  useEffect(() => {
    setConsultaTiendas("SELECT id_tienda, nombre_t, direccion_t FROM tiendas ORDER BY nombre_t");
  }, []);

  // Cuando se selecciona una tienda, cargar todos sus datos
  useEffect(() => {
    if (tiendaSeleccionada) {
      setCargando(true);
      const idTienda = tiendaSeleccionada.id_tienda;
      
      setConsultaEstadisticas(`
        SELECT 
          COUNT(DISTINCT pt.id_producto) as total_productos,
          SUM(pv.precio_venta * i.cantidad) as valor_inventario,
          AVG(pv.precio_venta) as precio_promedio
        FROM producto_tienda pt
        JOIN precio_venta pv ON pt.id_particular = pv.id_particular
        JOIN inventario i ON pt.id_particular = i.id_particular
        WHERE pt.id_tienda = '${idTienda}'
      `);
      
      setConsultaInventario(`
        SELECT 
          p.categoria as categoria,
          SUM(i.cantidad) as stock,
          SUM(pv.precio_venta * i.cantidad) as valor
        FROM producto_tienda pt
        JOIN productos p ON pt.id_producto = p.id_producto
        JOIN inventario i ON pt.id_particular = i.id_particular
        JOIN precio_venta pv ON pt.id_particular = pv.id_particular
        WHERE pt.id_tienda = '${idTienda}'
        GROUP BY p.categoria
        ORDER BY stock DESC
      `);
      
      setConsultaVentas(`
        SELECT 
          DATE_FORMAT(v.fecha_transaccion, '%Y-%m') as periodo,
          SUM(dv.cantidad * pv.precio_venta) as total_ventas,
          SUM(dv.cantidad) as cantidad
        FROM ventas v
        JOIN detalles_ventas dv ON v.id_venta = dv.id_venta
        JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
        JOIN precio_venta pv ON pt.id_particular = pv.id_particular
        JOIN empleados e ON v.id_empleado = e.id_empleado
        WHERE e.id_tienda = '${idTienda}'
        GROUP BY DATE_FORMAT(v.fecha_transaccion, '%Y-%m')
        ORDER BY periodo DESC
        LIMIT 6
      `);
      
      setConsultaEmpleados(`
        SELECT 
          e.nombre_emp as nombre_empleado,
          COUNT(DISTINCT v.id_venta) as num_ventas,
          SUM(dv.cantidad * pv.precio_venta) as total_ventas
        FROM empleados e
        JOIN ventas v ON e.id_empleado = v.id_empleado
        JOIN detalles_ventas dv ON v.id_venta = dv.id_venta
        JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
        JOIN precio_venta pv ON pt.id_particular = pv.id_particular
        WHERE e.id_tienda = '${idTienda}'
        GROUP BY e.id_empleado, e.nombre_emp
        ORDER BY total_ventas DESC
        LIMIT 10
      `);
      
      setConsultaTopProductos(`
        SELECT 
          p.nombre_prd as nombre_producto,
          SUM(dv.cantidad) as cantidad_vendida,
          pv.precio_venta,
          SUM(dv.cantidad * pv.precio_venta) as total_generado
        FROM detalles_ventas dv
        JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
        JOIN productos p ON pt.id_producto = p.id_producto
        JOIN precio_venta pv ON pt.id_particular = pv.id_particular
        WHERE pt.id_tienda = '${idTienda}'
        GROUP BY p.id_producto, p.nombre_prd, pv.precio_venta
        ORDER BY cantidad_vendida DESC
        LIMIT 10
      `);
      
      setConsultaWorstProductos(`
        SELECT 
          p.nombre_prd as nombre_producto,
          COALESCE(SUM(dv.cantidad), 0) as cantidad_vendida,
          pv.precio_venta,
          i.cantidad as stock_actual
        FROM producto_tienda pt
        JOIN productos p ON pt.id_producto = p.id_producto
        JOIN inventario i ON pt.id_particular = i.id_particular
        JOIN precio_venta pv ON pt.id_particular = pv.id_particular
        LEFT JOIN detalles_ventas dv ON pt.id_particular = dv.id_particular
        WHERE pt.id_tienda = '${idTienda}' AND i.cantidad > 0
        GROUP BY p.id_producto, p.nombre_prd, pv.precio_venta, i.cantidad
        ORDER BY cantidad_vendida ASC
        LIMIT 3
      `);
      
      setConsultaGanancias(`
        SELECT 
          p.categoria as categoria,
          SUM((pv.precio_venta - pc.precio_compra) * dv.cantidad) as ganancia
        FROM detalles_ventas dv
        JOIN producto_tienda pt ON dv.id_particular = pt.id_particular
        JOIN productos p ON pt.id_producto = p.id_producto
        JOIN precio_venta pv ON pt.id_particular = pv.id_particular
        JOIN precio_compra pc ON pt.id_particular = pc.id_particular
        WHERE pt.id_tienda = '${idTienda}'
        GROUP BY p.categoria
        ORDER BY ganancia DESC
      `);
    }
  }, [tiendaSeleccionada]);

  // Handlers para cada consulta
  const handleResultadoTiendas = (resultado) => {
    if (resultado && resultado.length > 0) {
      setTiendas(resultado);
      if (!tiendaSeleccionada) {
        setTiendaSeleccionada(resultado[0]);
      }
    }
    setConsultaTiendas(null);
  };

  const handleResultadoEstadisticas = (resultado) => {
    if (resultado && resultado.length > 0) {
      setEstadisticas(resultado[0]);
    }
    setConsultaEstadisticas(null);
  };

  const handleResultadoInventario = (resultado) => {
    setDatosInventario(resultado || []);
    setConsultaInventario(null);
  };

  const handleResultadoVentas = (resultado) => {
    setDatosVentas((resultado || []).reverse());
    setConsultaVentas(null);
  };

  const handleResultadoEmpleados = (resultado) => {
    setDatosEmpleados(resultado || []);
    setConsultaEmpleados(null);
  };

  const handleResultadoTopProductos = (resultado) => {
    setDatosTopProductos(resultado || []);
    setConsultaTopProductos(null);
  };

  const handleResultadoWorstProductos = (resultado) => {
    setDatosWorstProductos(resultado || []);
    setConsultaWorstProductos(null);
  };

  const handleResultadoGanancias = (resultado) => {
    setDatosGanancias(resultado || []);
    setConsultaGanancias(null);
    setCargando(false);
  };

  const kpiCards = [
    {
      icon: Package,
      label: 'Total Productos',
      value: estadisticas?.total_productos || '0',
      color: 'blue',
      bgColor: 'bg-blue-50',
      iconBg: 'bg-blue-100',
      iconColor: 'text-blue-600'
    },
    {
      icon: DollarSign,
      label: 'Valor Inventario',
      value: `$${(estadisticas?.valor_inventario || 0).toLocaleString()}`,
      color: 'green',
      bgColor: 'bg-green-50',
      iconBg: 'bg-green-100',
      iconColor: 'text-green-600'
    },
    {
      icon: TrendingUp,
      label: 'Precio Promedio',
      value: `$${(estadisticas?.precio_promedio || 0).toFixed(2)}`,
      color: 'purple',
      bgColor: 'bg-purple-50',
      iconBg: 'bg-purple-100',
      iconColor: 'text-purple-600'
    },
    {
      icon: ShoppingCart,
      label: 'Ganancias Totales',
      value: `$${datosGanancias.reduce((acc, g) => acc + (g.ganancia || 0), 0).toLocaleString()}`,
      color: 'orange',
      bgColor: 'bg-orange-50',
      iconBg: 'bg-orange-100',
      iconColor: 'text-orange-600'
    }
  ];

  return (
    <>
      {/* Formularios ocultos */}
      {consultaTiendas && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaTiendas} onResultado={handleResultadoTiendas} />
        </div>
      )}
      {consultaEstadisticas && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaEstadisticas} onResultado={handleResultadoEstadisticas} />
        </div>
      )}
      {consultaInventario && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaInventario} onResultado={handleResultadoInventario} />
        </div>
      )}
      {consultaVentas && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaVentas} onResultado={handleResultadoVentas} />
        </div>
      )}
      {consultaEmpleados && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaEmpleados} onResultado={handleResultadoEmpleados} />
        </div>
      )}
      {consultaTopProductos && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaTopProductos} onResultado={handleResultadoTopProductos} />
        </div>
      )}
      {consultaWorstProductos && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaWorstProductos} onResultado={handleResultadoWorstProductos} />
        </div>
      )}
      {consultaGanancias && (
        <div style={{ display: 'none' }}>
          <Formulario consulta={consultaGanancias} onResultado={handleResultadoGanancias} />
        </div>
      )}

      <div className="min-h-screen bg-gradient-to-br from-slate-50 via-white to-slate-50">
        <div className="max-w-[1600px] mx-auto px-4 sm:px-6 lg:px-8 py-8">
          
          {/* Header Section */}
          <div className="mb-10">
            <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-6">
              <div>
                <h1 className="text-4xl lg:text-5xl font-black text-gray-900 mb-2 tracking-tight">
                  Cadena de tiendas "La Tripa"
                </h1>
                <p className="text-gray-600 text-lg">
                  Análisis completo del rendimiento por tienda
                </p>
              </div>
              
              {/* Selector de Tienda */}
              <div className="relative">
                <select
                  value={tiendaSeleccionada?.id_tienda || ''}
                  onChange={(e) => {
                    const tienda = tiendas.find(t => t.id_tienda === e.target.value);
                    setTiendaSeleccionada(tienda);
                  }}
                  className="appearance-none bg-white border-2 border-emerald-400 text-gray-800 py-4 px-6 pr-14 rounded-2xl shadow-lg hover:border-emerald-500 hover:shadow-xl focus:outline-none focus:ring-4 focus:ring-emerald-200 transition-all duration-200 cursor-pointer text-lg font-bold min-w-[280px]"
                >
                  {tiendas.map((tienda) => (
                    <option key={tienda.id_tienda} value={tienda.id_tienda}>
                      {tienda.nombre_t}
                    </option>
                  ))}
                </select>
                <ChevronDown className="absolute right-5 top-1/2 transform -translate-y-1/2 text-emerald-500 pointer-events-none" size={26} />
              </div>
            </div>

            {/* Banner de Tienda Seleccionada */}
            {tiendaSeleccionada && (
              <div className="mt-8 bg-gradient-to-r from-emerald-500 via-emerald-600 to-teal-600 rounded-3xl p-8 shadow-2xl">
                <div className="flex items-center gap-6">
                  <div className="bg-white/25 backdrop-blur-sm p-5 rounded-2xl">
                    <Store size={40} className="text-white" />
                  </div>
                  <div>
                    <h2 className="text-3xl font-black text-white mb-2">
                      {tiendaSeleccionada.nombre_t}
                    </h2>
                    <p className="text-emerald-50 text-lg">
                      {tiendaSeleccionada.direccion_t || 'Dirección no disponible'}
                    </p>
                  </div>
                </div>
              </div>
            )}
          </div>

          {/* KPI Cards */}
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-10">
            {kpiCards.map((card, index) => (
              <div
                key={index}
                className={`${card.bgColor} rounded-2xl p-6 shadow-md hover:shadow-xl transition-all duration-300 border border-gray-100`}
              >
                <div className="flex items-start justify-between mb-4">
                  <div className={`${card.iconBg} p-4 rounded-xl`}>
                    <card.icon className={card.iconColor} size={28} strokeWidth={2.5} />
                  </div>
                </div>
                <h3 className="text-gray-600 text-sm font-bold uppercase tracking-wide mb-2">
                  {card.label}
                </h3>
                <p className="text-3xl font-black text-gray-900">
                  {cargando ? (
                    <span className="animate-pulse">...</span>
                  ) : (
                    card.value
                  )}
                </p>
              </div>
            ))}
          </div>

          {/* Sección de Gráficos */}
          <div className="space-y-8">
            
            {/* Fila 1: Inventario y Ventas */}
            <div className="grid grid-cols-1 xl:grid-cols-2 gap-8">
              <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                <InventoryChart data={datosInventario} />
              </div>
              <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                <SalesTrendChart data={datosVentas} />
              </div>
            </div>

            {/* Fila 2: Empleados y Ganancias */}
            <div className="grid grid-cols-1 xl:grid-cols-2 gap-8">
              <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                <EmployeeSalesChart data={datosEmpleados} />
              </div>
              <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                <ProfitDonutChart data={datosGanancias} />
              </div>
            </div>

            {/* Fila 3: Top y Worst Products */}
            <div className="grid grid-cols-1 xl:grid-cols-2 gap-8">
              <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                <TopProductsChart data={datosTopProductos} />
              </div>
              <div className="bg-white rounded-2xl shadow-lg border border-gray-100 overflow-hidden hover:shadow-xl transition-shadow duration-300">
                <WorstProductsChart data={datosWorstProductos} />
              </div>
            </div>

          </div>
        </div>
      </div>
    </>
  );
}

export default Tiendas;