import { useState } from "react";
import { Store, MapPin, Clock, Phone, Building2, ShoppingCart, Beef } from "lucide-react";
import Formulario from "../Formulario";

const MapaTiendas = () => {
    const [tiendas, setTiendas] = useState([]);
    const [estadoSeleccionado, setEstadoSeleccionado] = useState("Todos");

    // Cuando el Formulario traiga datos, los guardamos aquí
    const manejarResultado = (datos) => {
        setTiendas(datos);
    };

    // Filtrar tiendas por estado
    const tiendasFiltradas = estadoSeleccionado === "Todos" 
        ? tiendas 
        : tiendas.filter(t => t.estado_t === estadoSeleccionado);

    // Obtener lista única de estados
    const estados = ["Todos", ...new Set(tiendas.map(t => t.estado_t))];

    // Función para obtener el icono según el tipo de tienda
    const obtenerIconoTienda = (tipo) => {
        if (tipo === "Abarrotes") return <Store size={40} />;
        if (tipo === "Carnicería") return <Beef size={40} />;
        return <ShoppingCart size={40} />;
    };

    return (
        <div style={{ padding: "20px", maxWidth: "1400px", margin: "0 auto" }}>
            {/* Formulario invisible que trae los datos */}
            <Formulario 
                consulta="SELECT * FROM tiendas"
                onResultado={manejarResultado}
            />

            {/* Sección del Mapa */}
            {tiendas.length > 0 && (
                <div>
                    <div style={{ 
                        display: "flex", 
                        justifyContent: "space-between", 
                        alignItems: "center",
                        marginBottom: "30px",
                        padding: "20px",
                        background: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)",
                        borderRadius: "12px",
                        boxShadow: "0 4px 12px rgba(0,0,0,0.15)"
                    }}>
                        <h2 style={{ 
                            color: "white", 
                            margin: 0,
                            fontSize: "28px",
                            fontWeight: "bold",
                            textShadow: "0 2px 4px rgba(0,0,0,0.2)"
                        }}>
                            Ubicaciones ({tiendasFiltradas.length})
                        </h2>
                        
                        {/* Filtro por estado */}
                        <div>
                            <label style={{ 
                                marginRight: "12px", 
                                fontWeight: "600",
                                color: "white",
                                fontSize: "16px"
                            }}>
                                Filtrar por estado:
                            </label>
                            <select 
                                value={estadoSeleccionado}
                                onChange={(e) => setEstadoSeleccionado(e.target.value)}
                                style={{
                                    padding: "10px 16px",
                                    borderRadius: "8px",
                                    border: "2px solid rgba(255,255,255,0.3)",
                                    background: "rgba(255,255,255,0.95)",
                                    fontSize: "15px",
                                    fontWeight: "500",
                                    cursor: "pointer",
                                    transition: "all 0.2s ease"
                                }}
                            >
                                {estados.map(estado => (
                                    <option key={estado} value={estado}>{estado}</option>
                                ))}
                            </select>
                        </div>
                    </div>

                    {/* Mapa visual de las tiendas */}
                    <div style={{ 
                        display: "grid", 
                        gridTemplateColumns: "repeat(auto-fill, minmax(320px, 1fr))",
                        gap: "24px"
                    }}>
                        {tiendasFiltradas.map((tienda) => (
                            <div 
                                key={tienda.id_tienda}
                                style={{
                                    background: tienda.tipo_t === "Abarrotes" 
                                        ? "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
                                        : tienda.tipo_t === "Carnicería"
                                        ? "linear-gradient(135deg, #f093fb 0%, #f5576c 100%)"
                                        : "linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)",
                                    borderRadius: "16px",
                                    padding: "24px",
                                    boxShadow: "0 8px 16px rgba(0,0,0,0.15)",
                                    transition: "all 0.3s ease",
                                    cursor: "pointer",
                                    position: "relative",
                                    overflow: "hidden"
                                }}
                                onMouseEnter={(e) => {
                                    e.currentTarget.style.transform = "translateY(-8px) scale(1.02)";
                                    e.currentTarget.style.boxShadow = "0 12px 24px rgba(0,0,0,0.25)";
                                }}
                                onMouseLeave={(e) => {
                                    e.currentTarget.style.transform = "translateY(0) scale(1)";
                                    e.currentTarget.style.boxShadow = "0 8px 16px rgba(0,0,0,0.15)";
                                }}
                            >
                                {/* Decoración de fondo */}
                                <div style={{
                                    position: "absolute",
                                    top: "-50px",
                                    right: "-50px",
                                    width: "150px",
                                    height: "150px",
                                    background: "rgba(255,255,255,0.1)",
                                    borderRadius: "50%",
                                    pointerEvents: "none"
                                }}></div>

                                <div style={{ 
                                    marginBottom: "18px",
                                    textAlign: "center",
                                    color: "white",
                                    background: "rgba(255,255,255,0.2)",
                                    borderRadius: "12px",
                                    padding: "16px",
                                    backdropFilter: "blur(10px)"
                                }}>
                                    {obtenerIconoTienda(tienda.tipo_t)}
                                </div>
                                
                                <h3 style={{ 
                                    margin: "0 0 18px 0", 
                                    color: "white",
                                    fontSize: "20px",
                                    fontWeight: "bold",
                                    textShadow: "0 2px 4px rgba(0,0,0,0.2)"
                                }}>
                                    {tienda.nombre_t}
                                </h3>
                                
                                <div style={{ 
                                    fontSize: "14px", 
                                    color: "rgba(255,255,255,0.95)",
                                    lineHeight: "1.8",
                                    background: "rgba(255,255,255,0.15)",
                                    borderRadius: "10px",
                                    padding: "16px",
                                    backdropFilter: "blur(5px)"
                                }}>
                                    <p style={{ margin: "8px 0", display: "flex", alignItems: "center", gap: "8px" }}>
                                        <MapPin size={16} style={{ flexShrink: 0 }} /> 
                                        <span>{tienda.direccion_t}</span>
                                    </p>
                                    <p style={{ margin: "8px 0", display: "flex", alignItems: "center", gap: "8px" }}>
                                        <Building2 size={16} style={{ flexShrink: 0 }} /> 
                                        <span>{tienda.colonia_t}, {tienda.estado_t}</span>
                                    </p>
                                    <p style={{ margin: "8px 0", display: "flex", alignItems: "center", gap: "8px" }}>
                                        <Clock size={16} style={{ flexShrink: 0 }} /> 
                                        <span>{tienda.horario_operacion}</span>
                                    </p>
                                    <p style={{ margin: "8px 0", display: "flex", alignItems: "center", gap: "8px" }}>
                                        <Phone size={16} style={{ flexShrink: 0 }} /> 
                                        <span>{tienda.telefono_t}</span>
                                    </p>
                                    <p style={{ 
                                        margin: "12px 0 0 0",
                                        fontSize: "13px",
                                        color: "rgba(255,255,255,0.85)",
                                        fontStyle: "italic",
                                        paddingTop: "12px",
                                        borderTop: "1px solid rgba(255,255,255,0.3)"
                                    }}>
                                        {tienda.descripcion_t}
                                    </p>
                                </div>

                                <div style={{
                                    marginTop: "16px",
                                    display: "flex",
                                    justifyContent: "center"
                                }}>
                                    <span style={{
                                        background: "rgba(255,255,255,0.25)",
                                        color: "white",
                                        padding: "8px 16px",
                                        borderRadius: "20px",
                                        fontSize: "12px",
                                        fontWeight: "bold",
                                        display: "inline-block",
                                        backdropFilter: "blur(10px)",
                                        border: "1px solid rgba(255,255,255,0.3)",
                                        textTransform: "uppercase",
                                        letterSpacing: "0.5px"
                                    }}>
                                        {tienda.tipo_t}
                                    </span>
                                </div>
                            </div>
                        ))}
                    </div>
                </div>
            )}

            {/* Mensaje de carga */}
            {tiendas.length === 0 && (
                <div style={{
                    textAlign: "center",
                    padding: "60px 20px",
                    background: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)",
                    borderRadius: "16px",
                    marginTop: "20px",
                    boxShadow: "0 8px 16px rgba(0,0,0,0.15)"
                }}>
                    <Clock size={48} style={{ margin: "0 auto 20px", color: "white" }} />
                    <h3 style={{ color: "white", fontSize: "24px" }}>
                        Cargando datos de tiendas...
                    </h3>
                </div>
            )}
        </div>
    );
};

export default MapaTiendas;