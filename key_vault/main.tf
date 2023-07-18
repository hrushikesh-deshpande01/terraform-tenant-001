module "resouce_group" {
  source = "github.com/hrushikesh-deshpande01/terrafrom-modules-001/modules/key_vault"
  resource_group_name     = var.resource_group_name
  location = var.location
  virtual_network_name = var.virtual_network_name
  subnet1_name = var.subnet1_name
  key_vault_name = var.key_vault_name
}