module "resouce_group" {
  source = "github.com/hrushikesh-deshpande01/terrafrom-modules-001/modules/resource_group"
  name     = var.name
  location = var.location
}