output "id" {
  value = aws_instance.general.id
}

output "arn" {
  value = aws_instance.general.arn
}

output "availability_zone" {
  value = aws_instance.general.availability_zone
}

output "private_dns" {
  value = aws_instance.general.private_dns
}

output "subnet_id" {
  value = aws_instance.general.subnet_id
}

output "instance_state" {
  value = aws_instance.general.instance_state
}
