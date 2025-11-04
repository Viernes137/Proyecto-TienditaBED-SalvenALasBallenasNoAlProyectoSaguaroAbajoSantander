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
      
      // Consulta para estadísticas generales
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
      
      // Consulta para inventario por categoría
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
      
      // Consulta para tendencia de ventas (últimos 6 meses)
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
      
      // Consulta para mejores vendedores
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
      
      // Consulta para top 10 productos más vendidos
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
      
      // Consulta para 3 productos menos vendidos
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
      
      // Consulta para ganancias por categoría
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

  return (
    <>
      {/* Formularios ocultos para consultas */}
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

      <div className="min-h-screen bg-gradient-to-br from-gray-50 to-gray-100 p-8">
        {/* Header con selector de tienda */}
        <div className="mb-8">
          <div className="flex items-center justify-between mb-6">
            <div>
              <h1 className="text-4xl font-bold text-gray-800 mb-2">Dashboard de Tiendas</h1>
              <p className="text-gray-600">Análisis completo del rendimiento por tienda</p>
            </div>
            
            {/* Selector de Tienda */}
            <div className="relative">
              <select
                value={tiendaSeleccionada?.id_tienda || ''}
                onChange={(e) => {
                  const tienda = tiendas.find(t => t.id_tienda === e.target.value);
                  setTiendaSeleccionada(tienda);
                }}
                className="appearance-none bg-white border-2 border-emerald-500 text-gray-800 py-3 px-6 pr-12 rounded-xl shadow-lg hover:border-emerald-600 focus:outline-none focus:ring-4 focus:ring-emerald-200 transition-all duration-200 cursor-pointer text-lg font-semibold"
              >
                {tiendas.map((tienda) => (
                  <option key={tienda.id_tienda} value={tienda.id_tienda}>
                    {tienda.nombre_t}
                  </option>
                ))}
              </select>
              <ChevronDown className="absolute right-4 top-1/2 transform -translate-y-1/2 text-emerald-500 pointer-events-none" size={24} />
            </div>
          </div>

          {/* Info de la tienda seleccionada */}
          {tiendaSeleccionada && (
            <div className="bg-gradient-to-r from-emerald-500 to-teal-600 rounded-2xl p-6 shadow-xl text-white">
              <div className="flex items-center gap-4">
                <div className="bg-white/20 p-4 rounded-xl">
                  <Store size={32} />
                </div>
                <div>
                  <h2 className="text-2xl font-bold">{tiendaSeleccionada.nombre_t}</h2>
                  <p className="text-emerald-100">{tiendaSeleccionada.direccion_t || 'Dirección no disponible'}</p>
                </div>
              </div>
            </div>
          )}
        </div>

        {/* Tarjetas de estadísticas */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
          <div className="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow">
            <div className="flex items-center justify-between mb-4">
              <div className="bg-blue-100 p-3 rounded-xl">
                <Package className="text-blue-600" size={24} />
              </div>
            </div>
            <h3 className="text-gray-600 text-sm font-medium mb-1">Total Productos</h3>
            <p className="text-3xl font-bold text-gray-800">
              {cargando ? '...' : estadisticas?.total_productos || '0'}
            </p>
          </div>

          <div className="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow">
            <div className="flex items-center justify-between mb-4">
              <div className="bg-green-100 p-3 rounded-xl">
                <DollarSign className="text-green-600" size={24} />
              </div>
            </div>
            <h3 className="text-gray-600 text-sm font-medium mb-1">Valor Inventario</h3>
            <p className="text-3xl font-bold text-gray-800">
              {cargando ? '...' : `$${estadisticas?.valor_inventario?.toLocaleString() || '0'}`}
            </p>
          </div>

          <div className="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow">
            <div className="flex items-center justify-between mb-4">
              <div className="bg-purple-100 p-3 rounded-xl">
                <TrendingUp className="text-purple-600" size={24} />
              </div>
            </div>
            <h3 className="text-gray-600 text-sm font-medium mb-1">Precio Promedio</h3>
            <p className="text-3xl font-bold text-gray-800">
              {cargando ? '...' : `$${estadisticas?.precio_promedio?.toFixed(2) || '0'}`}
            </p>
          </div>

          <div className="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow">
            <div className="flex items-center justify-between mb-4">
              <div className="bg-orange-100 p-3 rounded-xl">
                <ShoppingCart className="text-orange-600" size={24} />
              </div>
            </div>
            <h3 className="text-gray-600 text-sm font-medium mb-1">Ganancias Totales</h3>
            <p className="text-3xl font-bold text-gray-800">
              {cargando ? '...' : `$${datosGanancias.reduce((acc, g) => acc + (g.ganancia || 0), 0).toLocaleString()}`}
            </p>
          </div>
        </div>

        {/* Gráficos principales */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
          <InventoryChart data={datosInventario} />
          <SalesTrendChart data={datosVentas} />
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
          <EmployeeSalesChart data={datosEmpleados} />
          <ProfitDonutChart data={datosGanancias} />
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
          <TopProductsChart data={datosTopProductos} />
          <WorstProductsChart data={datosWorstProductos} />
        </div>
      </div>
    </>
  );
}

export default Tiendas;