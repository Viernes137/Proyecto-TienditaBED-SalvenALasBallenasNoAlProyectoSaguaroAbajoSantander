from fastapi import FastAPI, Form
from fastapi.responses import JSONResponse, RedirectResponse
from fastapi.middleware.cors import CORSMiddleware  
from dotenv import load_dotenv
import mysql.connector
import os

#pa correr la api: uvicorn api:app --reload

load_dotenv(dotenv_path="../.env")

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  
    allow_methods=["*"],
    allow_headers=["*"],
)

db = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME"),
    port=int(os.getenv("DB_PORT"))
)

@app.get("/")
def read_root():
    return {"message": "Prueba de vida"}

@app.post("/Tablas")
def guardar_reporte(Consulta: str = Form(...)):
    #db_connection = None  
    try:
        ''' db_connection = mysql.connector.connect(
            host=os.getenv("DB_HOST"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD"),
            database=os.getenv("DB_NAME"),
            port=int(os.getenv("DB_PORT"))
        ) '''
        
        cursor = db.cursor(dictionary=True)
        cursor.execute(Consulta)
        datos = cursor.fetchall()
        cursor.close()

        return {"query": Consulta, "resultado": datos}

    except mysql.connector.Error as err:
        return JSONResponse(
            status_code=500, 
            content={"message": f"Database error: {err}"}
        )

    finally:
        if db and db.is_connected():
            db.close()
