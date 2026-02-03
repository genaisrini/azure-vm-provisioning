module "vm" {
  source = "./modules/vm"

  vm_name              = var.vm_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  subnet_id            = var.subnet_id
  vm_size              = var.vm_size
  os_type              = var.os_type
  admin_username       = var.admin_username
  ssh_public_key       = var.ssh_public_key

  tags = merge(
    var.tags,
    {
      "managed_by" = "terraform"
      "service"    = "vm-provisioning"
    }
  )
}
