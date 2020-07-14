resource "google_compute_instance" "instance-vm" {
  name         = var.nome-vm
  machine_type = var.machine-type
  zone         = var.zona

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }
    network_interface{
      network = google_compute_network.vpc.self_link
    }
}
