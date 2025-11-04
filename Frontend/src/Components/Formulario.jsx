import { useState, useEffect } from "react";

const Formulario = ({ consulta, onResultado }) => {
    const [cargando, setCargando] = useState(false);

    useEffect(() => {
        if (consulta) {
            obtenerDatos();
        }
    }, [consulta]);

    const obtenerDatos = async () => {
        setCargando(true);
        
        const formData = new FormData();
        formData.append("Consulta", consulta);

        try {
            const res = await fetch("http://127.0.0.1:8001/Tablas", {
                method: "POST",
                body: formData,
            });

            const data = await res.json();
            
            if (onResultado && data.resultado) {
                onResultado(data.resultado);
            }
        } catch (error) {
            console.error("Error al consultar:", error);
            if (onResultado) {
                onResultado([]);
            }
        } finally {
            setCargando(false);
        }
    };

    // Este componente NO renderiza nada visible
    return null;
};

export default Formulario;