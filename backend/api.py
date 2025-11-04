from fastapi import FastAPI, Form, Request
from fastapi.responses import JSONResponse, RedirectResponse, HTMLResponse
from fastapi.middleware.cors import CORSMiddleware  
from fastapi.staticfiles import StaticFiles
from pathlib import Path
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

def con_base():
    try:
        connection = mysql.connector.connect(
            host=os.getenv("DB_HOST"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD"),
            database=os.getenv("DB_NAME"),
            port=int(os.getenv("DB_PORT", "3306")),
            autocommit=True 
        )
        return connection
    except mysql.connector.Error as err:
        print(f"Error al conectar a la base de datos: {err}")
        raise  

@app.get("/")
def read_root():
    return {"message": "Prueba de vida"}

@app.post("/Tablas")
def guardar_reporte(Consulta: str = Form(...)):
    db = None
    try:
        db = con_base()
        with db.cursor(dictionary=True) as cursor:
            cursor.execute(Consulta)
            datos = cursor.fetchall()
        return {"query": Consulta, "resultado": datos}

    except Exception as e:
        return JSONResponse(
            status_code=500,
            content={"error": f"Error inesperado: {str(e)}"}
        )
    finally:
        if db and db.is_connected():
            db.close()


@app.get("/P1")
def listar_empleados():
    db = None
    try:
        db = con_base()
        with db.cursor(dictionary=True) as cursor:
            cursor.execute("SELECT * FROM empleados")
            datos = cursor.fetchall()
        return {"query": "SELECT * FROM empleados", "resultado": datos}

    except Exception as e:
        return JSONResponse(
            status_code=500,
            content={"error": f"Error inesperado: {str(e)}"}
        )
    finally:
        if db and db.is_connected():
            db.close()
