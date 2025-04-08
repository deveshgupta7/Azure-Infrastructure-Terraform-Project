variable "resource_group_name" {}
variable "location" {}
variable "vnet_name" {}
variable "kv_name" {}
variable "tenant_id" {}
variable "object_id" {}

variable "app_service_plan_name" {}
variable "sku_tier" {}
variable "sku_size" {}

variable "app_bff_name" {}
variable "app_middleware_name" {}

variable "sql_server_name" {}
variable "sql_admin_login" {}
variable "sql_admin_password" {}
variable "sql_db_name" {}

variable "tags" {
  type    = map(string)
  default = {}
}