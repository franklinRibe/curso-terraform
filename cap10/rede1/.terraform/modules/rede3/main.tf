##### Criação da VPC com sub-rede
resource "google_compute_network" "vpc-exemplo" {
  name = var.nome-vpc

  auto_create_subnetworks = var.subnet-bol
}
resource "google_compute_subnetwork" "vpc-subrede1" {
  name          = var.nome-subrede1
  ip_cidr_range = var.ip-subrede1
  region        = var.region-subrede1
  network       = google_compute_network.vpc-exemplo.id
}