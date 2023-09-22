resource "aws_iam_user" "Members" {

  count = length(var.members)
  name  = var.members[count.index]
}
