######### 
variable "gcp_ssh_pub_key" {
  type = string
  default = "ADD-CHAVE-PUBLICA"
}

########## Tamanho das instancias
variable "instance_count" {
  default = "3"
}

variable "name" {
  type = string
  default = "4linux"
}
