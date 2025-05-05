from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "InfraLite FastAPI backend is running 🚀"}
