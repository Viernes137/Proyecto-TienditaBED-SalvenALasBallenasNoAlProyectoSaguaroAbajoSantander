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
        "#60A5FA",
        "#34D399", 
        "#FBBF24",
        "#F87171",
        "#A78BFA",
        "#FB923C",
        "#4ADE80",
        "#F472B6"
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

    return (
        <div className="bg-white rounded-lg p-6 shadow-sm">
            <h3 className="text-lg font-semibold mb-4 text-gray-800">
                Gráfica de burbujas: Que tienda vende más (ya sea en productos o en cantidad)
            </h3>
            
            <div className="relative w-full" style={{ height: '500px' }}>
                <svg className="w-full h-full" viewBox="0 0 1000 500" preserveAspectRatio="xMidYMid meet">
                    <defs>
                        {datos.map((_, index) => (
                            <filter key={`shadow-${index}`} id={`shadow-${index}`} x="-50%" y="-50%" width="200%" height="200%">
                                <feGaussianBlur in="SourceAlpha" stdDeviation="3"/>
                                <feOffset dx="0" dy="2" result="offsetblur"/>
                                <feComponentTransfer>
                                    <feFuncA type="linear" slope="0.3"/>
                                </feComponentTransfer>
                                <feMerge>
                                    <feMergeNode/>
                                    <feMergeNode in="SourceGraphic"/>
                                </feMerge>
                            </filter>
                        ))}
                    </defs>
                    
                    {datos.map((item, index) => {
                        const totalItems = datos.length;
                        const padding = 100;
                        const usableWidth = 1000 - (padding * 2);
                        const usableHeight = 500 - (padding * 2);
                        
                        let x, y;
                        
                        if (totalItems === 1) {
                            x = 500;
                            y = 250;
                        } else if (totalItems === 2) {
                            x = padding + (index * usableWidth);
                            y = 250;
                        } else if (totalItems === 3) {
                            const positions = [
                                { x: 300, y: 250 },
                                { x: 700, y: 150 },
                                { x: 700, y: 350 }
                            ];
                            x = positions[index].x;
                            y = positions[index].y;
                        } else if (totalItems === 4) {
                            const col = index % 2;
                            const row = Math.floor(index / 2);
                            x = padding + 150 + (col * (usableWidth - 300));
                            y = padding + 50 + (row * (usableHeight - 100));
                        } else {
                            const itemsPerRow = Math.ceil(Math.sqrt(totalItems));
                            const col = index % itemsPerRow;
                            const row = Math.floor(index / itemsPerRow);
                            const totalRows = Math.ceil(totalItems / itemsPerRow);
                            
                            const horizontalSpacing = usableWidth / (itemsPerRow + 1);
                            const verticalSpacing = usableHeight / (totalRows + 1);
                            
                            x = padding + (col + 1) * horizontalSpacing;
                            y = padding + (row + 1) * verticalSpacing;
                        }
                        
                        const ratio = item.total_productos / maxProductos;
                        const minRadius = 35;
                        const maxRadius = 85;
                        const radius = minRadius + (ratio * (maxRadius - minRadius));
                        
                        const color = colores[index % colores.length];

                        return (
                            <g key={index}>
                                <circle
                                    cx={x}
                                    cy={y}
                                    r={radius}
                                    fill={color}
                                    opacity="0.9"
                                    className="transition-all duration-300 cursor-pointer hover:opacity-100"
                                    filter={`url(#shadow-${index})`}
                                >
                                    <title>{`${item.tienda}\nVentas: ${item.num_ventas}\nProductos vendidos: ${item.total_productos}`}</title>
                                </circle>
                                
                                <text
                                    x={x}
                                    y={y - 8}
                                    textAnchor="middle"
                                    dominantBaseline="middle"
                                    className="font-bold pointer-events-none select-none"
                                    style={{ 
                                        fontSize: Math.min(16, radius / 3.5),
                                        fill: '#ffffff',
                                    }}
                                >
                                    {item.tienda.length > 22 ? item.tienda.substring(0, 19) + '...' : item.tienda}
                                </text>
                                
                                <text
                                    x={x}
                                    y={y + 12}
                                    textAnchor="middle"
                                    dominantBaseline="middle"
                                    className="font-semibold pointer-events-none select-none"
                                    style={{ 
                                        fontSize: Math.min(14, radius / 4),
                                        fill: '#ffffff',
                                        opacity: 0.95
                                    }}
                                >
                                    {item.total_productos} productos
                                </text>
                            </g>
                        );
                    })}
                </svg>
            </div>

            <div className="mt-6 flex flex-wrap gap-3 justify-center">
                {datos.map((item, index) => (
                    <div key={index} className="flex items-center gap-2 bg-gray-50 px-3 py-2 rounded-full border border-gray-200">
                        <div
                            className="w-3 h-3 rounded-full"
                            style={{ backgroundColor: colores[index % colores.length] }}
                        />
                        <span className="text-sm text-gray-700 font-medium">
                            {item.tienda}
                        </span>
                    </div>
                ))}
            </div>

            <div className="mt-6 grid grid-cols-3 gap-4 text-center text-sm">
                <div className="bg-gray-50 p-3 rounded-lg">
                    <div className="font-semibold text-gray-800">Total Tiendas</div>
                    <div className="text-2xl font-bold text-gray-900 mt-1">{datos.length}</div>
                </div>
                <div className="bg-gray-50 p-3 rounded-lg">
                    <div className="font-semibold text-gray-800">Total Ventas</div>
                    <div className="text-2xl font-bold text-gray-900 mt-1">{datos.reduce((acc, d) => acc + (d.num_ventas || 0), 0)}</div>
                </div>
                <div className="bg-gray-50 p-3 rounded-lg">
                    <div className="font-semibold text-gray-800">Total Productos</div>
                    <div className="text-2xl font-bold text-gray-900 mt-1">{datos.reduce((acc, d) => acc + (d.total_productos || 0), 0)}</div>
                </div>
            </div>
        </div>
    );
};

export default GraficaBurbujas;