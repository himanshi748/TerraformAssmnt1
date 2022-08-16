#output

output "vpc_id" {
  description = "The ID OF THE VPC"
  value = aws_vpc.demo-vpc.id
}