module "EC2_INS" {
  source = "../EC2"
}
module "aws_s3_bucket" {
  source ="../S3"
}
module "user_ii" {
  source = "../usergroup"
}
