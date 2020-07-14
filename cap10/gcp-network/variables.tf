variable "nome-vpc"{
  type        = string
  description = "Nome da vpc"
  default     = "vpc"
}
variable "subnet-bol"{
  type        = bool
  default     = true
}
variable "nome-subrede1"{
  type        = string
  default     = "subrede1"
}
variable "ip-subrede1"{
  type        = string
  default     = "192.168.0.1/24"
}
variable "region-subrede1"{
  type        = string
  default     = "us-central1"
}