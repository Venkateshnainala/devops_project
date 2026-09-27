output "ecr_repository_url" {
  description = "Registry URI for docker push commands"
  value       = aws_ecr_repository.app_repo.repository_url
}

output "alb_dns_name" {
  description = "Public URL to access the deployed Spring Boot application"
  value       = "http://${aws_lb.main.dns_name}"
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "app_security_group_id" {
  description = "Security Group ID for compute instances"
  value       = aws_security_group.app_sg.id
}
