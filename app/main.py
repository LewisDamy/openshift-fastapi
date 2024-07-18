from fastapi import FastAPI
from app.routers import users
from app.database import engine, Base


def create_app():
    Base.metadata.create_all(bind=engine)

    app = FastAPI()

    app.include_router(users.router)

    return app


app = create_app()
