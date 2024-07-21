from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session

router = APIRouter()


@router.get("/users")
def read_users():
    # Example: query your users from the database
    return {
        "users": [
            {"userid": 1, "username": "tired"},
            {"userid": 2, "username": "wheel"},
        ]
    }
