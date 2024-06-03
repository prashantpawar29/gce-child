#Global
project_id = "searce-playground-v1"
region     = "asia-south1"

#Network Interface
network    = "prashant-vpc"
subnetwork = "gce-subnet"

#disk_snapshot_policy_name = "dev-infra-mgmt-host-disk-snapshot-policy"

#Access scopes 
service_account = {
  email  = "vaishnavi-unde-sa@searce-playground-v1.iam.gserviceaccount.com"
  scopes = ["cloud-platform"]
}

infra_mgmt_host = [
  {
    machine_type = "e2-medium"
    machine_name = "prashant-tf-test-vm"
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
      disk_name    = "prashant-tf-test-data01-disk"
      disk_size_gb = 50
      disk_type    = "pd-ssd"
    }*/
    disk_labels = {
      env = "dev"
      app = "mgmt-host"
    }
  },
]