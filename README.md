# 🚀 InfraLite

**InfraLite** is a one-click infrastructure scaffolding tool for solo devs, founders, and fast-moving teams. It sets up a FastAPI backend with PostgreSQL using Docker, deploys to AWS EC2 via Terraform, and connects to a custom domain with HTTPS using Caddy.

---

## 🌐 Live Demo
**https://infralite.dev** 🔒

---

## 🧠 Why InfraLite?
- Founders are busy — InfraLite eliminates 1 week of boilerplate infra setup.
- One GitHub repo = running backend with CI/CD, Terraform infra, domain + SSL.

---

## 🛠️ Tech Stack
- **Backend:** FastAPI (Python)
- **Database:** PostgreSQL
- **Infra-as-Code:** Terraform (AWS EC2)
- **Containerization:** Docker + Docker Compose
- **Web Server & TLS:** Caddy
- **CI/CD:** GitHub Actions
- **Domain:** Namecheap (`infralite.dev`)

---

## ⚙️ Features
- 🐳 Dockerized FastAPI + PostgreSQL
- 🔐 Auto HTTPS with Let's Encrypt
- ☁️ Deployed to AWS EC2 using Terraform
- 📦 GitHub Actions for automated deployment

---

## ✅ Step-by-Step Setup (What We Did)

### 1. 🏗 Created Project Structure
```bash
InfraLite/
├── setup.sh
├── templates/
│   └── fastapi-postgres/
│       ├── Dockerfile
│       ├── docker-compose.yml
│       ├── app/
│       │   ├── main.py
│       │   └── ...
│       └── .env.example
```

### 2. 🐳 Ran Locally
```bash
cd templates/fastapi-postgres
docker-compose up -d
```

✅ Verified FastAPI: http://localhost:8000

### 3. 🧾 Initialized GitHub Repo
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/sairamponguluri/InfraLite.git
git push -u origin master
```

### 4. ☁️ Deployed EC2 with Terraform
- Set up `terraform/aws_ec2/` directory
- Used GitHub Actions to auto-deploy EC2
- Added `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` as GitHub secrets

```yaml
# .github/workflows/deploy.yml
... # Contains Terraform init, plan, apply steps
```

### 5. 🔐 Connected Domain (infralite.dev)
- Bought domain from Namecheap
- Created A record pointing to EC2 IP

### 6. 🚀 Installed Caddy on EC2
```bash
# Manual install
curl -O https://github.com/caddyserver/caddy/releases/download/v2.7.6/caddy_2.7.6_linux_amd64.tar.gz
tar -xzf caddy_2.7.6_linux_amd64.tar.gz
sudo mv caddy /usr/bin/
sudo chmod +x /usr/bin/caddy
```

### 7. 📝 Caddyfile Config
```bash
sudo mkdir -p /etc/caddy
sudo nano /etc/caddy/Caddyfile
```
Contents:
```caddy
infralite.dev {
    reverse_proxy localhost:8000
}
```

### 8. 🛡️ HTTPS via Caddy
```bash
sudo setcap 'cap_net_bind_service=+ep' /usr/bin/caddy
sudo systemctl daemon-reload
sudo systemctl enable caddy
sudo systemctl start caddy
```

🔒 Certificate issued via Let’s Encrypt ✅

---

## 📸 Screenshots
- [ ] Terminal output
- [ ] GitHub Actions deployment
- [ ] EC2 dashboard
- [ ] Live domain view

---

## 📬 Contact
Built with ❤️ by [@sairamponguluri](https://github.com/sairamponguluri)

---

## 🚧 Future Plans
- Add landing page on `/` and move API to `/api`
- One-click deploy from GitHub template
- Add monitoring (Grafana/Prometheus)
- Include Supabase or S3 integration

---

## 💡 Inspiration
InfraLite is for devs who want to launch now — not next sprint.
