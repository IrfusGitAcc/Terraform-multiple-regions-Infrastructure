

output "ohio_instance_id" {
  description = "Ohio EC2 instance ID"
  value       = aws_instance.ohio_instance.id
}

output "ohio_public_ip" {
  description = "Ohio EC2 public IP"
  value       = aws_instance.ohio_instance.public_ip
}

output "virginia_instance_id" {
  description = "Virginia EC2 instance ID"
  value       = aws_instance.virginia_instance.id
}

output "virginia_public_ip" {
  description = "Virginia EC2 public IP"
  value       = aws_instance.virginia_instance.public_ip
}

