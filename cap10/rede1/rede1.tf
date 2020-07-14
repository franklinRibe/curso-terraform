module "rede2" {
  source = "/home/fribeiro/Documentos/4linux/treinamento/aulas/cap10/gcp-network"
  
  nome-vpc        = "rede2"
  subnet-bol      = false
  nome-subrede1   = "subrede-us-central"
  ip-subrede1     = "192.168.10.0/24"
  region-subrede1 = "us-central1"
}
module "rede3" {
  source = "/home/fribeiro/Documentos/4linux/treinamento/aulas/cap10/gcp-network"
  
  nome-vpc        = "rede3"
  subnet-bol      = false
  nome-subrede1   = "subrede-us-central"
  ip-subrede1     = "192.168.20.0/24"
  region-subrede1 = "asia-east1"
}
