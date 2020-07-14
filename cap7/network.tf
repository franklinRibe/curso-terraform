##### Criação da VPC
resource "google_compute_network" "vpc-examplo" {
  name = "net-cap7"

  auto_create_subnetworks = true
}