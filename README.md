# 🚀 End-to-End CI/CD Pipeline using GitHub Actions, Docker & AWS EC2

This project demonstrates a **production-style CI/CD pipeline** that automatically builds, versions, and deploys a Dockerized application to an AWS EC2 instance using **GitHub Actions**.

The pipeline follows **best practices** such as secure secret management, image versioning, and fail-fast deployment behavior.

---

## 🧱 Architecture Overview

GitHub Push  
→ GitHub Actions (CI/CD)  
→ Docker Image Build  
→ Docker Hub (Image Registry)  
→ SSH-based Deployment  
→ AWS EC2 (Docker Container)

---

## 🛠️ Tech Stack

- **CI/CD**: GitHub Actions  
- **Containerization**: Docker  
- **Container Registry**: Docker Hub  
- **Cloud Provider**: AWS EC2  
- **OS**: Ubuntu 22.04  
- **Authentication**: SSH Keys, GitHub Secrets  

---

## 🔄 CI/CD Workflow

### Continuous Integration (CI)
- Triggered on every push to `main`
- Builds Docker image
- Tags image with:
  - `latest`
  - Git commit SHA (immutable version)
- Pushes image to Docker Hub securely

### Continuous Deployment (CD)
- GitHub Actions connects to EC2 via SSH
- Pulls latest Docker image
- Stops and removes existing container
- Deploys updated container automatically
- Uses **fail-fast** strategy to avoid partial deployments

---

## 🔐 Security & Best Practices

- All credentials stored using **GitHub Actions Secrets**
- No hardcoded passwords or keys
- SSH key-based authentication
- Docker image versioning for traceability
- Fail-fast deployment using `set -e`

---

## 🧪 Fail-Fast Deployment Strategy

The deployment script uses:

```bash
set -e
```

This ensures:

Pipeline stops immediately on any failure

No silent or partial deployments

Clear and reliable feedback from CI/CD runs
set -e

## Repo_Structure
.
├── Dockerfile
├── app.sh
├── .github/
│   └── workflows/
│       └── ci-cd.yml
└── README.md

▶️ How It Works (Step-by-Step)

Developer pushes code to GitHub

GitHub Actions pipeline starts automatically

Docker image is built and tagged

Image is pushed to Docker Hub

GitHub Actions connects to EC2 via SSH

Existing container is replaced with the new version

Application is updated on the server

🎯 Key Learning Outcomes

Built a complete CI/CD pipeline from scratch

Implemented Docker image versioning

Used GitHub Secrets for secure credential management

Automated deployments to AWS EC2

Debugged real-world CI/CD and SSH issues

Applied production-grade fail-fast deployment strategy

📌 Future Improvements

Infrastructure provisioning using Terraform

Zero-downtime deployments

Kubernetes-based deployment

Health checks and monitoring integration

Blue-Green or Canary deployments

👤 Author

Tushar
DevOps / Cloud Enthusiast

⭐ If you found this project helpful, feel free to star the repository!


---
