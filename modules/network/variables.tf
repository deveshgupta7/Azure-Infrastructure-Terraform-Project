variable "vnet_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "address_space" {
  default = ["10.0.0.0/16"]
}
variable "tags" {
  type    = map(string)
  default = {}
}