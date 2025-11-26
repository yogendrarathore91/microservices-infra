🏗 Microservices Infra Deployment – Terraform Based Architecture

This project contains a fully automated production-grade Azure infrastructure deployment using Terraform modular architecture.
The solution follows a reusable module + environment structure enabling multi-environment scalability (DEV / QA / PROD) with clean separation of concerns.

🚀 Key Components Provisioned
Service	Description
Azure Resource Group	Logical boundary for all cloud resources
Azure Container Registry (ACR)	Stores Docker container images for microservices deployment
Azure Kubernetes Service (AKS)	Managed Kubernetes cluster for container orchestration
Azure SQL Server + Database	Secure backend relational data tier
Azure Key Vault	Central secret and password management
Modular Terraform Structure	Each component isolated as an independent reusable module
Remote Backend (Azure Storage)	Stores Terraform state securely for collaborative deployments

📦 Project Structure
microservices-infra/
│── env/
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│── module/
│   ├── resource_group/
│   ├── acr/
│   ├── aks/
│   ├── sql/
│   ├── key_vault/


🔥 Highlights

Highly scalable & reusable Terraform modules

Map + for_each driven infrastructure provisioning

Clean separation between environment config & module logic

Supports rapid multi-environment rollout

Ready for CI/CD integration (Azure DevOps / GitHub Actions)
