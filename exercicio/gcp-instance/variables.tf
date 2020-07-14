variable "vm-name"{
  type        = string
  default     = "vm1"
}
variable "machine_type"{
  type        = string
  default     = "f1-micro"
}
variable "zone"{
  type        = string
  default     = "us-central1-a"
}

variable "os-name"{
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-1604-lts"
}

variable "network_interface"{
  type        = string
  default     = "default"
}
variable "depends" {
  type        = string
  default     = "vpc"
}