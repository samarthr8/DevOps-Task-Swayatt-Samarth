output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnets" {
  value = [aws_subnet.public1.id, aws_subnet.public2.id]
}

output "private_subnets" {
  value = [aws_subnet.private1.id, aws_subnet.private2.id]
}

output "security_group_id" {
  value = aws_security_group.tf_sg.id
}

output "ec2_public_ip" {
  value = aws_instance.this.public_ip
}

output "ec2_id" {
  value = aws_instance.this.id
}

