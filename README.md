# Terraform Multi-Region AWS EC2 Deployment

## Project Overview

This project demonstrates how to use **Terraform Infrastructure as Code (IaC)** to provision two Amazon EC2 instances in two different AWS regions using a single Terraform configuration.

The deployment uses AWS provider aliases to manage infrastructure across multiple AWS regions.

## Architecture

| AWS Region | Region Code | EC2 Instance Name |
|---|---|---|
| US East (Ohio) | `us-east-2` | `hello-ohio` |
| US East (N. Virginia) | `us-east-1` | `hello-virginia` |

## Technologies Used

- Terraform
- AWS Cloud Provider
- Amazon EC2
- Amazon Linux 2023
- Ubuntu / WSL
- Git and GitHub

## Project Structure

```text
terraform-multi-region/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── terraform.tfvars
├── .gitignore
└── README.md
```

## File Description

| File | Purpose |
|---|---|
| `main.tf` | Defines AMI data sources and EC2 resources |
| `provider.tf` | Configures AWS providers for Ohio and Virginia |
| `variables.tf` | Declares input variables |
| `outputs.tf` | Displays EC2 instance IDs and public IP addresses |
| `versions.tf` | Specifies Terraform and AWS provider versions |
| `terraform.tfvars` | Supplies variable values |
| `.gitignore` | Excludes generated files and sensitive information |

## AWS Infrastructure Details

### 1. Ohio Region

- Region: US East (Ohio)
- Region Code: `us-east-2`
- Instance Name: `hello-ohio`
- Instance Type: `t3.micro`
- Operating System: Amazon Linux 2023

### 2. Northern Virginia Region

- Region: US East (N. Virginia)
- Region Code: `us-east-1`
- Instance Name: `hello-virginia`
- Instance Type: `t3.micro`
- Operating System: Amazon Linux 2023

## Terraform Deployment Steps

### Step 1: Initialize Terraform

```bash
terraform init
```

Downloads the required AWS provider plugin.

### Step 2: Format Terraform Files

```bash
terraform fmt -recursive
```

Formats Terraform configuration files.

### Step 3: Validate Configuration

```bash
terraform validate
```

Checks the Terraform configuration for errors.

### Step 4: Preview Infrastructure

```bash
terraform plan
```

Shows the infrastructure Terraform intends to create.

### Step 5: Deploy Infrastructure

```bash
terraform apply
```

Creates the two EC2 instances after confirmation.

### Step 6: View Outputs

```bash
terraform output
```

Displays the created EC2 instance IDs and public IP addresses.

### Step 7: Destroy Infrastructure

```bash
terraform destroy
```

Removes the infrastructure managed by this Terraform configuration.

## Key Terraform Concepts Demonstrated

- Infrastructure as Code (IaC)
- AWS Provider Configuration
- Multiple AWS Provider Aliases
- Multi-Region Infrastructure Deployment
- Terraform Variables
- Terraform Data Sources
- EC2 Resource Provisioning
- Terraform Outputs
- Terraform State Management

## Important Notes

- AWS credentials must be configured before deployment.
- AMI IDs are retrieved dynamically for each AWS region.
- EC2 instances may incur AWS charges.
- Always verify AWS billing before deploying.
- Never upload AWS access keys, secret keys, `.pem` files, or Terraform state files to GitHub.
- Do not commit `.terraform/` or `*.tfstate` files.

## Learning Outcome

Through this project, I gained practical experience in provisioning AWS infrastructure across multiple regions using Terraform.

This project demonstrates how Terraform provider aliases enable infrastructure deployment across different AWS regions while maintaining a single, organised IaC codebase.

---

**Project:** Terraform Multi-Region EC2 Deployment  
**Category:** AWS | DevOps | Infrastructure as Code
