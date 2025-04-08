# Azure Infrastructure - Terraform Project

This project provisions a secure, modular infrastructure on Microsoft Azure for deploying an e-commerce API solution using Terraform. It includes App Services for Backend-for-Frontend (BFF) and Middleware, a SQL Database with Customer Managed Key (CMK), Private Endpoints, and all associated networking components.

## Features

- Azure App Services (BFF & Middleware) using PremiumV2 Plan
- Azure SQL Database with Transparent Data Encryption (TDE) & CMK
- Azure Key Vault for secure CMK storage
- Virtual Network (VNet), Subnets, and Network Security Groups (NSGs)
- Private DNS Zones and Private Endpoints for internal access
- Modular Terraform structure for easy reusability

## Project Structure

```
.
├── modules/
│   ├── app_service/
│   ├── app_service_plan/
│   ├── sql_database/
│   ├── key_vault/
│   ├── network/
│   └── private_dns/
├── environments/
│   └── west-europe/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── terraform.tfvars
├── .gitignore
├── README.md
└── versions.tf
```

## 🚀 Getting Started

### Prerequisites

- Terraform CLI >= 1.3.0
- Azure CLI authenticated (`az login`)
- A valid Azure subscription and permission to create resources

### Setup

1. Clone this repository:
```bash
git clone https://github.com/your-repo/Azure-Infrastructure-Terraform-Project
cd Azure-Infrastructure-Terraform-Project/environments/west-europe
```

2. Initialize Terraform:
```bash
terraform init
```

3. Preview the changes:
```bash
terraform plan
```

4. Apply the infrastructure:
```bash
terraform apply
```

## 📌 Notes

- Update `terraform.tfvars` with your tenant ID, object ID, and secure credentials.
- SQL Server password must meet Azure's complexity requirements.
- No application code is deployed; this project focuses solely on infrastructure.

## 🧠 Bonus Concepts

- **Landing Zone**: The architecture represents a secure, scalable landing zone for workloads in Azure.
- **Hub-and-Spoke Topology**: Recommended networking model to securely route traffic across environments.