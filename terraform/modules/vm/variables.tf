variable "vm_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}
variable "vm_size" {}

variable "os_type" {
  description = "linux or windows"
  type        = string
}

variable "admin_username" {}
variable "ssh_public_key" {
  default = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}
