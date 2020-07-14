variable "vpc"{
    type        = string
    default     = "vpc" 
}
variable "auto_create_subnetworks"{
    type        = bool
    default     = false 
}
variable "subnet"{
    type        = string
    default     = "subnet"
}
variable "ip_cidr_range"{
    type        = string
    default     = "192.168.10.0/24"
}
variable "region"{
    type        = string
    default     = "us-central1"
}