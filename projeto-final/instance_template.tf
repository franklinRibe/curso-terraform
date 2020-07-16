resource "google_compute_instance_template" "instance-template-us" {
  depends_on = [google_compute_network.vpc-4linux]
  name        = "ubuntu-us-central"
  description = "Template usado para criar instâncias Ubuntu."

  tags = ["ubuntu", "4linux"]

  machine_type         = "n2-standard-2"
  can_ip_forward       = false

  disk{
    source_image = "ubuntu-1804-lts"
    auto_delete  = true
    boot         = true
  }
  
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  network_interface {
    network = "vpc-4linux"
    subnetwork = "us-net"

    access_config {
        //Ephemeral IP
    }
  }
  metadata = {
    ssh-keys = var.gcp_ssh_pub_key
  }
  metadata_startup_script = "apt-get update && apt-get install -y nginx"
}