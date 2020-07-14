resource "google_compute_instance" "instance-vm" {
  depends_on   = [var.depends] 
  name         = var.vm-name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.os-name
    }
  }
    network_interface{
      subnetwork = var.network_interface
    }
}
