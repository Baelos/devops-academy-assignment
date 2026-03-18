# Section 1 – Terraform-managed AWS VPC

## Overview
This task creates an AWS VPC using Terraform with:
- public and private subnets
- internet gateway
- NAT gateway
- route tables
- variables and module structure

## Architecture
The VPC contains:
- 2 public subnets in different availability zones
- 2 private subnets in different availability zones
- 1 internet gateway attached to the VPC
- 1 NAT gateway in a public subnet
- public route table with internet access through the internet gateway
- private route table with outbound internet access through the NAT gateway

## Why this design
Public subnets are intended for internet-facing resources such as load balancers or bastion hosts.
Private subnets are intended for internal services such as application servers or databases that should not be directly exposed to the internet.

The NAT gateway allows instances in private subnets to reach the internet for updates or package downloads without exposing them publicly.

## Project structure
- root Terraform files call the module and define variables/outputs
- reusable logic is placed inside `modules/vpc`

## Files
- `main.tf` – provider and module call
- `variables.tf` – input variables
- `outputs.tf` – exported values
- `terraform.tfvars` – variable values
- `modules/vpc/*` – VPC implementation

## Commands
```bash
terraform init
terraform fmt
terraform validate
terraform plan
