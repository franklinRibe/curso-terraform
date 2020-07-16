##### Iniciando o provider
provider "google" {
  project     = "MY-PROJECT"
  region      = "us-central1"
}
##### Criação da VPC
resource "google_compute_network" "vpc-4linux" {
  name = "vpc-4linux"

  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "us-net" {
  name          = "us-net"
  ip_cidr_range = "192.168.10.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-4linux.id
}
##### regras de firewalll

resource "google_compute_firewall" "fw-web" {
  name    = "fw-4linux"
  network = google_compute_network.vpc-4linux.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "6443", "2379", "2380", "10250", "10255", "10251", "10252", "30000-32767", "6783-6784"]
  }
  source_ranges = ["0.0.0.0/0"]
  source_tags = ["web"]
}