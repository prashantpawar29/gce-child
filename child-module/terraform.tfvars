#Global
project_id = "<project-id>"
region     = "asia-south1"

#Network Interface
network    = "dev-main-vpc"
subnetwork = "dev-mgmt-apps-asia-sth1-subnet"

disk_snapshot_policy_name = "dev-infra-mgmt-host-disk-snapshot-policy"

#Access scopes 
service_account = {
  email  = "dev-infra-mgmt-host-gce-sa@<project-id>.iam.gserviceaccount.com"
  scopes = ["cloud-platform"]
}

infra_mgmt_host = [
  {
    machine_type = "e2-medium"
    machine_name = "dev-infra-mgmt-host-asia-sth1-a"
    machine_zone = "asia-south1-a"
    instance_labels = {
      env = "dev"
      app = "mgmt-host"
    }
    network_tags          = ["allow-iap-access"]
    vm_deletion_protect   = true
    internal_ip           = ""
    enable_external_ip    = false
    boot_disk_auto_delete = false
    boot_disk0_info = {
      disk_size_gb = 30
      disk_type    = "pd-standard"
    }
    /*data_disk_info = {
      disk_name    = "dev-infra-mgmt-host-asia-sth1-a-01-data01-disk"
      disk_size_gb = 50
      disk_type    = "pd-ssd"
    }*/
    disk_labels = {
      env = "dev"
      app = "mgmt-host"
    }
  },
]