##### Criação da VPC
resource "google_compute_network" "vpc-aula6" {
  name = "vpc-aula6"

  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "us-net" {
  name          = "us-net"
  ip_cidr_range = "192.168.10.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-aula6.id
}

resource "google_compute_subnetwork" "asia-net" {
  name          = "asia-net"
  ip_cidr_range = "192.168.20.0/24"
  region        = "asia-east1"
  network       = google_compute_network.vpc-aula6.id
}


resource "google_compute_firewall" "fw-aula6" {
  name    = "fw-aula6"
  network = google_compute_network.vpc-aula6.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
  source_ranges = ["0.0.0.0/0"]
}