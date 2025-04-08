variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "sku_tier" {
  default = "PremiumV2"
}
variable "sku_size" {
  default = "P1v2"
}
variable "tags" {
  type    = map(string)
  default = {}
}