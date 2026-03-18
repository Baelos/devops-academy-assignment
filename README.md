# DevOps Academy Assignment

This repository contains my submission for the DevOps Academy assignment.  
I selected one task from each required section and focused on Terraform-based infrastructure work, troubleshooting, and decision-making.

## Selected Tasks

### Section 1 – Implementation
**Task A: Create a Terraform-managed AWS VPC**

Implemented:
- VPC
- public and private subnets
- internet gateway
- NAT gateway
- route tables
- variables and module structure

### Section 2 – Troubleshooting
**Task B: Terraform Error: Error locking state**

Covered:
- root cause of Terraform state locking issues
- short-term fixes
- long-term solution using S3 + DynamoDB
- safe team workflows for Terraform

### Section 3 – Thought Process
**Task C: Terraform shows large infrastructure diff unexpectedly**

Covered:
- investigation steps before apply
- environment and state verification
- drift detection
- provider/module/version checks
- peer review and safe approval process

## Repository Structure
- `section-1/` – Terraform VPC implementation
- `section-2/` – troubleshooting write-up for Terraform state locking
- `section-3/` – thought process write-up for unexpected Terraform diff

## Validation
For Section 1, the Terraform configuration was checked with:
- `terraform fmt -recursive`
- `terraform init`
- `terraform validate`

## Notes
The goal of this submission was to demonstrate not only implementation ability, but also understanding of safe infrastructure workflows, Terraform state handling, and production-minded reasoning.
