# 📦 InfraLite – Instant Infra Starter for Founders

## ✅ Day 1 Milestone: Local Infra Working

InfraLite is a one-click infrastructure scaffold generator built for DevOps-shy founders and developers who want to ship fast.

This README documents the **local backend stack** that was successfully built and launched on Day 1.

---

## 🛠 Stack Used

- **FastAPI** – Python backend
- **PostgreSQL** – Database via Docker Compose
- **Docker** – Containerized local development
- **Docker Compose** – Service orchestration
- **Git Bash + Windows** – Local dev environment

---

## 🚀 How to Run Locally

### 1. Clone the repo:
```bash
git clone https://github.com/yourusername/InfraLite.git
cd InfraLite/templates/fastapi-postgres
2. Launch with Docker Compose:
bash
Copy code
docker-compose up -d
3. Open in browser:
Visit: http://localhost:8000

You’ll see:

json
Copy code
{ "message": "InfraLite FastAPI backend is running 🚀" }
📸 Screenshots
Terminal output:

Browser response:

Screenshots will be added in screenshots/ folder

🎯 Next Goals
 Deploy same stack to AWS with Terraform

 Add GitHub Actions CI/CD

 Add Prometheus monitoring

 Auto-generate stack-specific README

 Launch MVP site

💡 Why InfraLite?
Because founders want to build products, not waste a week setting up infra.

You choose a stack → InfraLite builds it → You ship fast.




















