variable "server_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "admin_login" {}
variable "admin_password" {}
variable "db_name" {}
variable "sku_name" {
  default = "S1"
}
variable "max_size_gb" {
  default = 5
}
variable "cmk_key_id" {}
variable "tags" {
  type    = map(string)
  default = {}
}