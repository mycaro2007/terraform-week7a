resource "aws_s3_bucket" "week7" {
  bucket = "kenyangirl2030"  
  
}
terraform {
  backend "s3" {
    bucket         = "kenyangirl2030"
    key            = "terraform.tfstate" 
    region         = "us-east-1"
    dynamodb_table = "DynamoDB-state-Locking"
  }
}