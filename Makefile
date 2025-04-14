# Makefile for Credit Decisioning System

# Build all Docker images
build:
	docker-compose build

# Start the system
up:
	docker-compose up

# Stop and remove containers
down:
	docker-compose down

# Clean all containers and volumes
clean:
	docker-compose down -v

# Run unit tests for all components
test:
	pytest */test_*.py

# Run BDD tests for all components
bdd:
	behave */features

# Rebuild and restart everything
rebuild:
	docker-compose down -v
	docker-compose up --build
