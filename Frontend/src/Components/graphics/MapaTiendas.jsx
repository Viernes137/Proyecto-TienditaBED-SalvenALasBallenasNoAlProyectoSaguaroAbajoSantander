import { useState, useEffect, useRef } from "react";
import { Navigation, MapPin } from "lucide-react";
import Formulario from "../Formulario";

const MapControls = ({ onZoomIn, onZoomOut, onLocateMe }) => {
  return (
    <div style={{
      position: "absolute",
      top: "20px",
      right: "20px",
      zIndex: 1000,
      display: "flex",
      flexDirection: "column",
      gap: "8px"
    }}>
      <div style={{
        background: "white",
        borderRadius: "12px",
        boxShadow: "0 4px 12px rgba(0,0,0,0.15)",
        overflow: "hidden"
      }}>
        <button 
          onClick={onZoomIn}
          style={{
            width: "44px",
            height: "44px",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            border: "none",
            background: "white",
            cursor: "pointer",
            fontSize: "24px",
            fontWeight: "300",
            color: "#333",
            borderBottom: "1px solid #e0e0e0",
            transition: "background 0.2s"
          }}
          onMouseEnter={(e) => e.currentTarget.style.background = "#f5f5f5"}
          onMouseLeave={(e) => e.currentTarget.style.background = "white"}
        >
          +
        </button>
        <button 
          onClick={onZoomOut}
          style={{
            width: "44px",
            height: "44px",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            border: "none",
            background: "white",
            cursor: "pointer",
            fontSize: "24px",
            fontWeight: "300",
            color: "#333",
            transition: "background 0.2s"
          }}
          onMouseEnter={(e) => e.currentTarget.style.background = "#f5f5f5"}
          onMouseLeave={(e) => e.currentTarget.style.background = "white"}
        >
          −
        </button>
      </div>
      
      <button 
        onClick={onLocateMe}
        style={{
          width: "44px",
          height: "44px",
          background: "white",
          borderRadius: "12px",
          boxShadow: "0 4px 12px rgba(0,0,0,0.15)",
          border: "none",
          cursor: "pointer",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          color: "#333",
          transition: "all 0.2s"
        }}
        onMouseEnter={(e) => {
          e.currentTarget.style.background = "#0A7368";
          e.currentTarget.style.color = "white";
        }}
        onMouseLeave={(e) => {
          e.currentTarget.style.background = "white";
          e.currentTarget.style.color = "#333";
        }}
      >
        <Navigation size={20} />
      </button>
    </div>
  );
};

const MapaTiendas = () => {
  const [tiendas, setTiendas] = useState([]);
  const mapRef = useRef(null);
  const mapInstanceRef = useRef(null);
  const markersRef = useRef([]);

  const manejarResultado = (datos) => {
    setTiendas(datos);
  };

  useEffect(() => {
    if (tiendas.length === 0 || mapInstanceRef.current) return;

    const link = document.createElement('link');
    link.rel = 'stylesheet';
    link.href = 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.min.css';
    document.head.appendChild(link);

    const script = document.createElement('script');
    script.src = 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.min.js';
    
    script.onload = () => {
      if (mapRef.current && window.L && !mapInstanceRef.current) {
        const map = window.L.map(mapRef.current, {
          zoomControl: false,
          attributionControl: false
        }).setView([19.4326, -99.1332], 12);

        window.L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
          attribution: '© OpenStreetMap'
        }).addTo(map);

        mapInstanceRef.current = map;
        agregarMarcadores();
      }
    };

    document.head.appendChild(script);

    return () => {
      if (mapInstanceRef.current) {
        mapInstanceRef.current.remove();
        mapInstanceRef.current = null;
      }
    };
  }, [tiendas]);

  const agregarMarcadores = () => {
    if (!mapInstanceRef.current || !window.L) return;

    markersRef.current.forEach(marker => marker.remove());
    markersRef.current = [];

    const bounds = [];

    tiendas.forEach((tienda) => {
      if (!tienda.latitud || !tienda.longitud) return;

      const esAbarrotes = tienda.tipo_t === "Abarrotes";
      const color = esAbarrotes ? "#0A7368" : "#F95204";

      const customIcon = window.L.divIcon({
        className: 'custom-marker',
        html: `
          <div style="position: relative; cursor: pointer;">
            <div style="
              width: 40px;
              height: 40px;
              background: ${color};
              border-radius: 50%;
              display: flex;
              align-items: center;
              justify-content: center;
              box-shadow: 0 4px 12px rgba(0,0,0,0.3);
              border: 3px solid white;
              transition: transform 0.2s;
            " onmouseover="this.style.transform='scale(1.15)'" onmouseout="this.style.transform='scale(1)'">
              <div style="width: 16px; height: 16px; background: white; border-radius: 50%;"></div>
            </div>
            <div style="
              position: absolute;
              top: 40px;
              left: 50%;
              transform: translateX(-50%);
              width: 0;
              height: 0;
              border-left: 6px solid transparent;
              border-right: 6px solid transparent;
              border-top: 10px solid ${color};
            "></div>
          </div>
        `,
        iconSize: [40, 50],
        iconAnchor: [20, 50]
      });

      const marker = window.L.marker([tienda.latitud, tienda.longitud], {
        icon: customIcon
      }).addTo(mapInstanceRef.current);

      marker.bindPopup(`
        <div style="padding: 10px; min-width: 200px;">
          <h3 style="margin: 0 0 8px 0; color: ${color}; font-size: 16px; font-weight: bold;">
            ${tienda.nombre_t}
          </h3>
          <p style="margin: 4px 0; font-size: 13px; color: #666;">
            <strong>Tipo:</strong> ${tienda.tipo_t}
          </p>
          <p style="margin: 4px 0; font-size: 13px; color: #666;">
            <strong>Dirección:</strong> ${tienda.direccion_t}
          </p>
          <p style="margin: 4px 0; font-size: 13px; color: #666;">
            <strong>Colonia:</strong> ${tienda.colonia_t}
          </p>
          <p style="margin: 4px 0; font-size: 13px; color: #666;">
            <strong>Estado:</strong> ${tienda.estado_t}
          </p>
          <p style="margin: 4px 0; font-size: 13px; color: #666;">
            <strong>Horario:</strong> ${tienda.horario_operacion}
          </p>
          <p style="margin: 4px 0; font-size: 13px; color: #666;">
            <strong>Teléfono:</strong> ${tienda.telefono_t}
          </p>
        </div>
      `);

      markersRef.current.push(marker);
      bounds.push([tienda.latitud, tienda.longitud]);
    });

    if (bounds.length > 0) {
      mapInstanceRef.current.fitBounds(bounds, { padding: [50, 50] });
    }
  };

  useEffect(() => {
    if (mapInstanceRef.current && tiendas.length > 0) {
      agregarMarcadores();
    }
  }, [tiendas]);

  const handleZoomIn = () => {
    if (mapInstanceRef.current) mapInstanceRef.current.zoomIn();
  };

  const handleZoomOut = () => {
    if (mapInstanceRef.current) mapInstanceRef.current.zoomOut();
  };

  const handleLocateMe = () => {
    if (mapInstanceRef.current && tiendas.length > 0) {
      const bounds = tiendas
        .filter(t => t.latitud && t.longitud)
        .map(t => [t.latitud, t.longitud]);
      if (bounds.length > 0) {
        mapInstanceRef.current.fitBounds(bounds, { padding: [50, 50] });
      }
    }
  };

  return (
    <div style={{ padding: "20px", maxWidth: "1400px", margin: "0 auto" }}>
      <Formulario 
        consulta="SELECT * FROM tiendas"
        onResultado={manejarResultado}
      />

      {tiendas.length > 0 && (
        <div style={{
          width: "100%",
          height: "600px",
          borderRadius: "16px",
          overflow: "hidden",
          boxShadow: "0 8px 24px rgba(0,0,0,0.2)",
          position: "relative"
        }}>
          <div ref={mapRef} style={{ width: "100%", height: "100%" }}></div>
          
          <MapControls 
            onZoomIn={handleZoomIn}
            onZoomOut={handleZoomOut}
            onLocateMe={handleLocateMe}
          />

          <div style={{
            position: "absolute",
            bottom: "20px",
            left: "50%",
            transform: "translateX(-50%)",
            background: "rgba(255,255,255,0.95)",
            padding: "10px 20px",
            borderRadius: "20px",
            boxShadow: "0 4px 12px rgba(0,0,0,0.2)",
            display: "flex",
            alignItems: "center",
            gap: "8px"
          }}>
            <MapPin size={16} style={{ color: "#0A7368" }} />
            <span style={{ fontWeight: "600", color: "#333" }}>
              {tiendas.length} tiendas en el mapa
            </span>
          </div>
        </div>
      )}

      {tiendas.length === 0 && (
        <div style={{
          textAlign: "center",
          padding: "80px 20px",
          minHeight: "400px",
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center"
        }}>
          <div style={{
            width: "80px",
            height: "80px",
            border: "4px solid #f3f3f3",
            borderTop: "4px solid #0A7368",
            borderRadius: "50%",
            animation: "spin 1s linear infinite",
            marginBottom: "20px"
          }}></div>
          <h3 style={{ 
            color: "#0A7368",
            fontSize: "24px",
            fontWeight: "600",
            margin: "0 0 10px 0"
          }}>
            Cargando mapa de tiendas...
          </h3>
          <style>{`
            @keyframes spin {
              0% { transform: rotate(0deg); }
              100% { transform: rotate(360deg); }
            }
          `}</style>
        </div>
      )}
    </div>
  );
};

export default MapaTiendas;