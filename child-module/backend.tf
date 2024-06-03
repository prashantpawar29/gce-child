terraform {
  backend "gcs" {
    bucket = "pranav-tfstate-backend-gcs"
    prefix = "env/dev/regions/asia-south1/gce/vm/infra_mgmt_host"
  }
}
