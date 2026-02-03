variable "location" {}

variable "resource_group_name" {}

variable "subnet_id" {}

variable "vm_name" {}

variable "vm_size" {
  default = "Standard_B2s"
}

variable "os_type" {
  description = "linux or windows"
}

variable "admin_username" {
  default = "azureuser"
}

variable "ssh_public_key" {
  description = "Required for Linux VMs"
  default     = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}
