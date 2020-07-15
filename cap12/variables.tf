variable "name"{
    type    = string
    default = "instancia"
}


variable "machine_type"{
   type    = string
   default = "f1-micro"
}

variable "zone"{
   type    = string
   default = "us-central1-a"
}

variable "image"{
   type    = string
   default = "ubuntu-os-cloud/ubuntu-1604-lts"
}