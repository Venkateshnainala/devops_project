variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Name prefix for tagged resources"
  type        = string
  default     = "spring-app"
}

variable "vpc_cidr" {
  description = "Base CIDR block for the custom VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets (minimum 2 AZs required for ALB)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "app_port" {
  description = "Port exposed by the Spring Boot application container"
  type        = number
  default     = 8080
}

variable "instance_type" {
  description = "EC2 instance type (t3.micro is AWS Free Tier eligible)"
  type        = string
  default     = "t3.micro"
}

variable "asg_min_size" {
  description = "Minimum number of running instances"
  type        = number
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum capacity for scaling out"
  type        = number
  default     = 3
}

variable "asg_desired_capacity" {
  description = "Desired number of running instances"
  type        = number
  default     = 1
}
