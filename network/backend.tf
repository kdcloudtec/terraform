terraform {
   backend "s3" {
     bucket         = "kdcloudtec-network-tfstate"   # Make sure this bucket already exists
     key            = "network/state.tfstate"
     region         = "ap-south-1"
     encrypt        = true
     ##use_lockfile   = true  # replaces dynamodb_table (deprecated)
   }
 }
