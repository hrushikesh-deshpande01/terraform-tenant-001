module "virtual_network" {
  source = "github.com/hrushikesh-deshpande01/terrafrom-modules-001/modules/virtual_network"
  virtual_network_name         = var.virtual_network_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  network_security_group_name  = var.network_security_group_name
}

