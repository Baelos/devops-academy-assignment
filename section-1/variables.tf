variable "aws_region" {
  description = "AWS region for the infrastructure"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Project name used for naming resources"
  type        = string
  default     = "academy-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for private subnet 1"
  type        = string
  default     = "10.0.11.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for private subnet 2"
  type        = string
  default     = "10.0.12.0/24"
}

variable "availability_zone_1" {
  description = "First availability zone"
  type        = string
  default     = "eu-central-1a"
}

variable "availability_zone_2" {
  description = "Second availability zone"
  type        = string
  default     = "eu-central-1b"
}
