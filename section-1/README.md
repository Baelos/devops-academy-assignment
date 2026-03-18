# Section 1 – Terraform-managed AWS VPC

For this task, I chose Terraform because I had already been introduced to it during my studies and wanted to practice it more directly. Since I already do tasks closer to Dockerizing a Python web app in school, I wanted this assignment to be a chance to work more with infrastructure and networking.

The configuration creates:
- one VPC
- two public subnets in different availability zones
- two private subnets in different availability zones
- one internet gateway
- one NAT gateway
- route tables and subnet associations

I used public and private subnets because that felt like a good basic example of how infrastructure is usually separated. Public subnets can be used for resources that need internet access, while private subnets are better for internal services that should not be exposed directly.

The NAT gateway is there so that resources in private subnets can still reach the internet when needed, for example for updates, without making them public.

I also split the VPC logic into a module and used variables. I mainly did that to keep the configuration less messy and easier to read.

## Files

- `main.tf` – provider and module call
- `variables.tf` – input variables
- `outputs.tf` – output values
- `terraform.tfvars` – actual values used
- `modules/vpc/` – VPC resources
- `architecture-diagram.png` – simple diagram of the architecture

## Commands used

```bash
terraform init
terraform fmt -recursive
terraform validate
```
