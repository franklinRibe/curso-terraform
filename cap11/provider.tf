provider "google"{
    project     = "balao-magico"
    region      = "southamerica-east-1" 
}
##### Salvando TF-STATE
terraform {
  backend "gcs" {
    bucket  = "teste-aula"
    prefix  = "terraform/state"
  }
}