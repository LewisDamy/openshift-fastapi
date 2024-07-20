from fastapi import FastAPI
from routers import users
from database import engine, Base


def create_app():
    app = FastAPI()

    app.include_router(users.router)

    Base.metadata.create_all(bind=engine)

    return app


if __name__ == "__main__":
    import uvicorn

    app = create_app()
    uvicorn.run(app, host="0.0.0.0", port=8080)
