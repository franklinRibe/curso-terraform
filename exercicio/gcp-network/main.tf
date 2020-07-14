##### Criação da VPC
resource "google_compute_network" "vpc" {
  name = var.vpc
  auto_create_subnetworks = var.auto_create_subnetworks
}
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.vpc.self_link
}
