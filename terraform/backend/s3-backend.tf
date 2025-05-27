#terraform {
 # backend "s3" {
  #  bucket         = "sharmila-dr-tfstate"         # Globally unique bucket name
   #region         = "us-east-1"
    #dynamodb_table = "sharmila-lock-table"         # For state locking
    #encrypt        = true
  #}
#}
