module "create_vpc"{
  source                    = "./gcp-network"
  vpc                       = "vpc-4linux"
  auto_create_subnetworks   = false
  subnet                    = "us-net"
  ip_cidr_range             = "192.168.20.0/24"
  region                    = "us-central1"
}

module "instancia-rh"{
  depends            = module.create_vpc.vpc_name
  source             = "./gcp-instance"
  vm-name            = "vm-rh"
  machine_type       = "f1-micro"
  zone               = "us-central1-a"
  os-name            = "ubuntu-os-cloud/ubuntu-1604-lts"
  network_interface  = module.create_vpc.vpc_self_link
}

module "instancia-adm"{
  depends            = module.create_vpc.vpc_name
  source             = "./gcp-instance"
  vm-name            = "vm-adm"
  machine_type       = "f1-micro"
  zone               = "us-central1-a"
  os-name            = "ubuntu-os-cloud/ubuntu-1604-lts"
  network_interface  = module.create_vpc.vpc_self_link
}
