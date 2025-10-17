import { useState } from "react";

const Formulario = () => {
    const [sql, setSql] = useState("");
    const [resultado, setResultado] = useState([]);

    const handleSubmit = async (e) => {
        e.preventDefault(); // evita que la página se recargue
        const formData = new FormData();
        formData.append("Consulta", sql);

        const res = await fetch("http://127.0.0.1:8000/Tablas", {
            method: "POST",
            body: formData,
        });

        const data = await res.json();
        setResultado(data);
    };

    return (
        <div>
            <form onSubmit={handleSubmit}>
                <label htmlFor="sql">Consulta SQL:</label>
                <textarea
                    id="sql"
                    rows="4"
                    cols="50"
                    value={sql}
                    onChange={(e) => setSql(e.target.value)}
                ></textarea>
                <button type="submit">Enviar</button>
            </form>

            <div>
                <h3>Resultado:</h3>
                <pre>{JSON.stringify(resultado, null, 2)}</pre>
            </div>
        </div>
    );
};

export default Formulario;
