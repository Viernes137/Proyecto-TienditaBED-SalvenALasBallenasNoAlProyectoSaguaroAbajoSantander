import { useEffect,useState } from "react";

const forms = () => {
    const [name,setName] = useState ("")
    
    return (

        <div>
            <h1>FORMULARIO DE REGISTRO</h1>
            <h1>HOla negro {name}</h1>
            <input
                id="nombre"
                placeholder="Ingrese su nombre"
                value = {name}
                onChange={ (name) => setName(event.target.value)}
            >
            
            </input>


        </div>
    );


};

export default forms