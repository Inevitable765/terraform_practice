provider "aws' {
  region = "ap-south-1"
}

# create s3 bucket -1
resource "aws_s3_bucket" "example" {
  bucket = "inevitable8765_${terraform.workspace}"
  acl = "private"

  tags = {
  Name = "MyBucket-${terraform.workspace}"
  Enviroment = terraform.workspace
 }
}
