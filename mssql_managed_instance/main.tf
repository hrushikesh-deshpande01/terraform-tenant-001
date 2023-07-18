module "resouce_group" {
  source = "github.com/hrushikesh-deshpande01/terrafrom-modules-001/modules/mssql_managed_instance"
  resource_group_name     = var.resource_group_name
  location = var.location
  virtual_network_name = var.virtual_network_name
  subnet1_name = var.subnet1_name
  subnet2_name = var.subnet2_name
  route_table_name = var.route_table_name
  mssql_managed_instance_name = var.mssql_managed_instance_name
  sku_name = var.sku_name
  license_type = var.license_type
  vcores = var.vcores
  storage_size_in_gb = var.storage_size_in_gb
  key_vault_name = var.key_vault_name
}