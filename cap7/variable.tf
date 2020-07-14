##### Variáveis de máquina

variable "nome-vm"{
  type        = string
  description = "Nome da VM"
  default     = "vm-7"
}
variable "machine-type"{
  type        = string
  description = "tipo da instância"
  default     = "f1-micro"
}
variable "zona"{
  type        = string
  description = "Zona da VM"
  default     = "us-central1-b"
}

###### Output
output "interface-0"{
    value     = google_compute_instance.instance-vm.network_interface.0.name
}
output "ip-interno"{
    value     = google_compute_instance.instance-vm.network_interface.0.network_ip
}

output "cpu"{
    value     = google_compute_instance.instance-vm.cpu_platform
}

output "network-gateway"{
    value     = google_compute_network.vpc
}