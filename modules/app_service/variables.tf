variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "app_service_plan_id" {}
variable "tags" {
  type    = map(string)
  default = {}
}