# EC201 Outputs 
output "EC201-instance_id" {
  description = "EC201 Instance ID"
  value       = aws_instance.EC201.id

}
output "EC201-private_ip" {
  description = "EC201 Private IP"
  value       = aws_instance.EC201.private_ip
}

# EC202 Outputs 
output "EC202-instance_id" {
  description = "EC202 Instance ID"
  value       = aws_instance.EC202.id

}
output "EC202-private_ip" {
  description = "EC202 Private IP"
  value       = aws_instance.EC202.private_ip
}