terraform {
  backend "s3" {
    bucket         = "trend-app-terraform-state-bucket"
    key            = "env/dev/terraform.tfstate"
    region         = "ap-south-1"
    # dynamodb_table = "terraform-lock-table"  # Optional for state locking
    encrypt        = true
  }
}