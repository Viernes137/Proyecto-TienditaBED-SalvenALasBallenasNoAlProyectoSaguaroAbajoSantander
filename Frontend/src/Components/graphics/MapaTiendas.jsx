import { useState } from "react";
import { Store, MapPin, Clock, Phone, Building2, ShoppingCart, Beef } from "lucide-react";
import Formulario from "../Formulario";

const MapaTiendas = () => {
    const [tiendas, setTiendas] = useState([]);
    const [estadoSeleccionado, setEstadoSeleccionado] = useState("Todos");

    // Cuando el Formulario traiga datos, los guardamos aquíiip
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
        if (tipo === "Abarrotes") return <Store size={32} />;
        if (tipo === "Carnicería") return <Beef size={32} />;
        return <ShoppingCart size={32} />;
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
                        marginBottom: "20px" 
                    }}>
                        <h2>Ubicaciones ({tiendasFiltradas.length})</h2>
                        
                        {/* Filtro por estado */}
                        <div>
                            <label style={{ marginRight: "10px", fontWeight: "bold" }}>
                                Filtrar por estado:
                            </label>
                            <select 
                                value={estadoSeleccionado}
                                onChange={(e) => setEstadoSeleccionado(e.target.value)}
                                style={{
                                    padding: "8px 12px",
                                    borderRadius: "4px",
                                    border: "1px solid #ccc"
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
                        gridTemplateColumns: "repeat(auto-fill, minmax(300px, 1fr))",
                        gap: "20px"
                    }}>
                        {tiendasFiltradas.map((tienda) => (
                            <div 
                                key={tienda.id_tienda}
                                style={{
                                    backgroundColor: "white",
                                    border: "2px solid #e0e0e0",
                                    borderRadius: "8px",
                                    padding: "20px",
                                    boxShadow: "0 2px 4px rgba(0,0,0,0.1)",
                                    transition: "transform 0.2s, box-shadow 0.2s",
                                    cursor: "pointer"
                                }}
                                onMouseEnter={(e) => {
                                    e.currentTarget.style.transform = "translateY(-5px)";
                                    e.currentTarget.style.boxShadow = "0 4px 8px rgba(0,0,0,0.2)";
                                }}
                                onMouseLeave={(e) => {
                                    e.currentTarget.style.transform = "translateY(0)";
                                    e.currentTarget.style.boxShadow = "0 2px 4px rgba(0,0,0,0.1)";
                                }}
                            >
                                <div style={{ 
                                    marginBottom: "15px",
                                    textAlign: "center",
                                    color: "#007bff"
                                }}>
                                    {obtenerIconoTienda(tienda.tipo_t)}
                                </div>
                                
                                <h3 style={{ 
                                    margin: "0 0 15px 0", 
                                    color: "#333",
                                    fontSize: "18px",
                                    fontWeight: "bold"
                                }}>
                                    {tienda.nombre_t}
                                </h3>
                                
                                <div style={{ 
                                    fontSize: "14px", 
                                    color: "#666",
                                    lineHeight: "1.6" 
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
                                        fontSize: "12px",
                                        color: "#888",
                                        fontStyle: "italic",
                                        paddingTop: "12px",
                                        borderTop: "1px solid #f0f0f0"
                                    }}>
                                        {tienda.descripcion_t}
                                    </p>
                                </div>

                                <div style={{
                                    marginTop: "15px"
                                }}>
                                    <span style={{
                                        backgroundColor: "#007bff",
                                        color: "white",
                                        padding: "6px 12px",
                                        borderRadius: "4px",
                                        fontSize: "12px",
                                        fontWeight: "bold",
                                        display: "inline-block"
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
                    backgroundColor: "#f9f9f9",
                    borderRadius: "8px",
                    marginTop: "20px"
                }}>
                    <Clock size={48} style={{ margin: "0 auto 20px", color: "#999" }} />
                    <h3 style={{ color: "#666" }}>
                        Cargando datos de tiendas...
                    </h3>
                </div>
            )}
        </div>
    );
};

export default MapaTiendas;