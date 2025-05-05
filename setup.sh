#!/bin/bash

echo "🔧 Starting InfraLite Setup..."

cd templates/fastapi-postgres

echo "🐳 Running Docker Compose..."
docker-compose up -d

echo "✅ Backend + Database launched successfully!"
