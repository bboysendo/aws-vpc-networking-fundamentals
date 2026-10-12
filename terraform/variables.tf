variable "aws_region" {
  description = "AWS region to deploy into. Must have at least 2 Availability Zones."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Short name used as a prefix/tag for all resources in this lab."
  type        = string
  default     = "vpc-lab"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the two public subnets (one per AZ)."
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the two private subnets (one per AZ)."
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "create_nat_gateway" {
  description = "Whether to create a NAT Gateway (billed hourly + per GB, not Free-Tier eligible). Set false to study the public-subnet/IGW half of the lab for free."
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "If true, create only one NAT Gateway (in AZ A) shared by both private subnets, instead of one per AZ. Cheaper, but AZ A becomes a single point of failure for outbound private traffic."
  type        = bool
  default     = true
}

variable "create_demo_instances" {
  description = "Whether to launch the two demo EC2 instances (web in public subnet, app in private subnet)."
  type        = bool
  default     = true
}

variable "instance_type" {
  description = "EC2 instance type for the demo instances. t3.micro is Free-Tier eligible on new accounts."
  type        = string
  default     = "t3.micro"
}
