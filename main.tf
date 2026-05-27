provider "aws' {
  region = "ap-south-1"
}

# create s3 bucket -1
resource "aws_s3_bucket" "example" {
  bucket = "inevitable8765-${terraform.workspace}"

  tags = {
  Name = "MyBucket-${terraform.workspace}"
  Environment = terraform.workspace
 }
}
