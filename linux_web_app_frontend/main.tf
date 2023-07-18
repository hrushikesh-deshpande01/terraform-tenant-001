module "resouce_group" {
  source = "github.com/hrushikesh-deshpande01/terrafrom-modules-001/modules/linux_web_app"
  resource_group_name     = var.resource_group_name
  location = var.location
  virtual_network_name = var.virtual_network_name
  subnet1_name = var.subnet1_name
  subnet2_name = var.subnet2_name
  service_plan = var.service_plan
  linux_web_app = var.linux_web_app
  app_command_line = var.app_command_line
  java_version = var.java_version
  key_vault_name = var.key_vault_name
}