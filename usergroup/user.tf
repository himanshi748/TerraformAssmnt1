#Creating users
resource "aws_iam_user" "newusers" {
  count = length(var.username)
  name  = element(var.username, count.index)
}

resource "aws_iam_user_policy_attachment" "ec2-user-full" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  policy_arn = aws_iam_policy.ec2_ashi.arn
}

resource "aws_iam_group" "developers" {
  name = "cute-names"
  path = "/users/"
}

resource "aws_iam_group_membership" "team" {
  for_each = toset(var.username )

  name = "tf-testing-group-membership"

  users = [each.value]

  group = aws_iam_group.developers.name
}

resource "aws_iam_user" "choice" {
  count = var.Value?1:0
  name  = "ByChoiceUser1"
}