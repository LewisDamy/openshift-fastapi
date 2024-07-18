# Help target to display usage information
help:
	@echo "Usage: make <target>"
	@echo "Targets:"
	@echo "  help          - Show this help message"
	@echo "  install       - Install dependencies"
	@echo "  run           - Run the FastAPI development server"

# Target to install project dependencies
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

# Target to run the FastAPI development server
run:
	uvicorn app.main:app --reload --port 9000
