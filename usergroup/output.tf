
output "username" {
  value = aws_iam_user.newusers.*.name
}