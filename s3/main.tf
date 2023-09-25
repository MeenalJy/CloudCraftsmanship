resource "aws_s3_bucket" "mybucket" {

  bucket = "primary-demo-bucketfor-use-234561"
}
resource "aws_s3_object" "myobject" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "hello.txt"
  source = "/home/projectluna/Witty-Projects/AWS-with-Terraform/s3/hello.txt"
}

