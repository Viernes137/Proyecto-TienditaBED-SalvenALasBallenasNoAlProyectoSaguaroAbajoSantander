import { useState, useEffect } from "react";

const GraficaBurbujas = () => {
    const [datos, setDatos] = useState([]);
    const [cargando, setCargando] = useState(true);
    const [error, setError] = useState(null);

    const consulta = `SELECT 
        t.nombre_t as tienda,
        COUNT(v.id_venta) as num_ventas,
        SUM(dv.cantidad) as total_productos
    FROM tiendas t
    JOIN empleados e ON t.id_tienda = e.id_tienda
    JOIN ventas v ON e.id_empleado = v.id_empleado
    JOIN detalles_ventas dv ON v.id_venta = dv.id_venta
    GROUP BY t.nombre_t
    ORDER BY total_productos DESC`;

    useEffect(() => {
        obtenerDatos();
    }, []);

    const obtenerDatos = async () => {
        setCargando(true);
        setError(null);
        const formData = new FormData();
        formData.append("Consulta", consulta);

        try {
            const res = await fetch("http://127.0.0.1:8000/Tablas", {
                method: "POST",
                body: formData,
            });
            
            if (!res.ok) {
                throw new Error(`HTTP error! status: ${res.status}`);
            }
            
            const data = await res.json();
            console.log("Datos recibidos:", data);
            
            if (data.resultado && Array.isArray(data.resultado) && data.resultado.length > 0) {
                setDatos(data.resultado);
            } else {
                setError("No se encontraron datos");
                console.warn("Respuesta sin datos:", data);
            }
        } catch (error) {
            console.error("Error al consultar:", error);
            setError(error.message || "Error al cargar datos");
        } finally {
            setCargando(false);
        }
    };

    const colores = [
        { bg: "#6B7280" },
        { bg: "#F59E0B" },
        { bg: "#10B981" },
        { bg: "#EF4444" },
    ];

    if (cargando) {
        return (
            <div className="bg-white rounded-lg p-6 shadow-sm">
                <h3 className="text-lg font-semibold mb-4 text-gray-800">
                    Gráfica de burbujas: Que tienda vende más
                </h3>
                <div className="flex justify-center items-center h-96">
                    <div className="text-gray-500">Cargando datos...</div>
                </div>
            </div>
        );
    }

    if (error) {
        return (
            <div className="bg-white rounded-lg p-6 shadow-sm">
                <h3 className="text-lg font-semibold mb-4 text-gray-800">
                    Gráfica de burbujas: Que tienda vende más
                </h3>
                <div className="flex flex-col justify-center items-center h-96 gap-4">
                    <div className="text-red-500">Error: {error}</div>
                    <button 
                        onClick={obtenerDatos}
                        className="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600"
                    >
                        Reintentar
                    </button>
                </div>
            </div>
        );
    }

    if (!datos || datos.length === 0) {
        return (
            <div className="bg-white rounded-lg p-6 shadow-sm">
                <h3 className="text-lg font-semibold mb-4 text-gray-800">
                    Gráfica de burbujas: Que tienda vende más
                </h3>
                <div className="flex flex-col justify-center items-center h-96 gap-4">
                    <div className="text-gray-500">No hay datos disponibles</div>
                    <button 
                        onClick={obtenerDatos}
                        className="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600"
                    >
                        Recargar
                    </button>
                </div>
            </div>
        );
    }

    const maxProductos = Math.max(...datos.map(d => d.total_productos || 0), 1);
    const maxVentas = Math.max(...datos.map(d => d.num_ventas || 0), 1);

    const calcularTamano = (productos) => {
        const minSize = 40;
        const maxSize = 180;
        return minSize + (productos / maxProductos) * (maxSize - minSize);
    };

    const calcularPosicion = (ventas, index, total) => {
        const baseX = (ventas / maxVentas) * 70 + 10;
        const offsetY = ((index / total) * 60) + 10;
        return { x: baseX, y: offsetY };
    };

    return (
        <div className="bg-white rounded-lg p-6 shadow-sm">
            <h3 className="text-lg font-semibold mb-4 text-gray-800">
                Gráfica de burbujas: Que tienda vende más (ya sea en productos o en cantidad)
            </h3>
            
            <div className="relative w-full h-96 bg-gray-50 rounded-lg overflow-hidden">
                <svg className="w-full h-full">
                    {datos.map((item, index) => {
                        const tamano = calcularTamano(item.total_productos);
                        const pos = calcularPosicion(item.num_ventas, index, datos.length);
                        const color = colores[index % colores.length];

                        return (
                            <g key={index}>
                                <circle
                                    cx={`${pos.x}%`}
                                    cy={`${pos.y}%`}
                                    r={tamano / 2}
                                    fill={color.bg}
                                    opacity="0.8"
                                    className="transition-all duration-300 cursor-pointer hover:opacity-100"
                                    style={{ filter: 'drop-shadow(0 4px 6px rgba(0, 0, 0, 0.1))' }}
                                >
                                    <title>{`${item.tienda}\nVentas: ${item.num_ventas}\nProductos: ${item.total_productos}`}</title>
                                </circle>
                                <text
                                    x={`${pos.x}%`}
                                    y={`${pos.y}%`}
                                    textAnchor="middle"
                                    dominantBaseline="middle"
                                    className="text-white font-semibold text-sm pointer-events-none"
                                    style={{ fontSize: Math.max(10, tamano / 8) }}
                                >
                                    {item.tienda}
                                </text>
                            </g>
                        );
                    })}
                </svg>

                <div className="absolute bottom-2 left-2 text-xs text-gray-500">
                    Q1
                </div>
                <div className="absolute bottom-2 right-2 text-xs text-gray-500 flex items-center gap-1">
                    Q4
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none">
                        <rect x="2" y="2" width="12" height="12" rx="2" fill="#E5E7EB"/>
                    </svg>
                </div>
            </div>

            <div className="mt-4 flex flex-wrap gap-4 justify-center">
                {datos.slice(0, 4).map((item, index) => (
                    <div key={index} className="flex items-center gap-2">
                        <div
                            className="w-3 h-3 rounded-full"
                            style={{ backgroundColor: colores[index % colores.length].bg }}
                        />
                        <span className="text-xs text-gray-600 font-medium">
                            {item.tienda}
                        </span>
                    </div>
                ))}
            </div>

            <div className="mt-4 grid grid-cols-3 gap-4 text-center text-xs text-gray-600">
                <div>
                    <div className="font-semibold text-gray-800">Total Tiendas</div>
                    <div>{datos.length}</div>
                </div>
                <div>
                    <div className="font-semibold text-gray-800">Total Ventas</div>
                    <div>{datos.reduce((acc, d) => acc + (d.num_ventas || 0), 0)}</div>
                </div>
                <div>
                    <div className="font-semibold text-gray-800">Total Productos</div>
                    <div>{datos.reduce((acc, d) => acc + (d.total_productos || 0), 0)}</div>
                </div>
            </div>
        </div>
    );
};

export default GraficaBurbujas;