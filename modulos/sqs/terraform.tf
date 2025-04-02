provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# terraform {
#   backend "s3" {
#     bucket  = "dms-prd-terraform-bucket-state-file"
#     key     = "sales-broker-prd-service.tfstate"
#     encrypt = "true"
#     region  = "us-east-2"
#   }
# }