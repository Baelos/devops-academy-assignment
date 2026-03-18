# DevOps Academy Assignment

This repository contains my submission for the DevOps Academy assignment.

For this assignment, I decided to focus more on Terraform. I had already come across it during my studies and wanted to get closer to it in a more practical way. At the same time, tasks like Dockerizing a Python web app are already something I do as part of school, so I wanted to use this opportunity to work on something a bit different and move more towards infrastructure and infrastructure as code.

## Selected tasks

### Section 1 – Implementation
**Task A: Create a Terraform-managed AWS VPC**

In this part, I created a Terraform configuration for:
- a VPC
- two public subnets
- two private subnets
- an internet gateway
- a NAT gateway
- route tables and associations

I also split the VPC part into a module and used variables, mainly to keep the code cleaner and easier to follow.

### Section 2 – Troubleshooting
**Task B: Terraform Error: Error locking state**

Here I focused on a problem that feels much closer to real Terraform usage in a team. I explained why state locking errors happen, what can cause them, how I would handle them in the short term, and what the better long-term setup looks like.

### Section 3 – Thought Process
**Task C: Terraform shows large infrastructure diff unexpectedly**

For the last section, I wanted to show how I would think before doing something risky. The main idea here was that if Terraform suddenly shows a big unexpected plan, I would not apply it immediately. I would first check the environment, state, recent changes, and whether the infrastructure drifted from the code.

## Repository structure

- `section-1/` – Terraform VPC implementation
- `section-2/` – write-up for the Terraform state locking issue
- `section-3/` – thought process for reviewing an unexpected Terraform diff

## Validation

For the Terraform configuration in section 1, I checked it with:
- `terraform fmt -recursive`
- `terraform init`
- `terraform validate`

## Final note

I chose these tasks mainly because I wanted to go a bit more into infrastructure work and not stay only with things I already do more often in school. My goal here was not just to write Terraform code, but also to show that I understand some of the practical thinking around state, change review, and safer workflows.
