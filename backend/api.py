from fastapi import FastAPI, Form
from fastapi.responses import JSONResponse, RedirectResponse
from fastapi.middleware.cors import CORSMiddleware  
from dotenv import load_dotenv
import mysql.connector
import os

#pa correr la api: uvicorn main:app --reload

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
    return {"message": "Hola desde FastAPI"}

@app.post("/reportes")

def guardar_reporte(
id_seccion: str = Form(...),
fecha: str = Form(...),
tipo: str = Form(...),
reporte: str = Form(...)):
    
    cursor = db.cursor()
    query = "INSERT INTO reportes (id_seccion, fecha, tipo, reporte) VALUES (%s, %s, %s, %s)"
    valores = (id_seccion, fecha, tipo, reporte)

    cursor.execute(query, valores)
    db.commit()
    cursor.close()
    dif = "0"
    #return JSONResponse(content={"mensaje": "Reporte guardado correctamente"})
    return RedirectResponse(url="url", status_code=303)
    return JSONResponse(dif)
