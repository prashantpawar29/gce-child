terraform {
  backend "gcs" {
    bucket = "pranav-tfstate-backend-gcs"
    prefix = ""
  }
}
