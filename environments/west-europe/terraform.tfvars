resource_group_name  = "veripark-rg"
location             = "westeurope"
vnet_name            = "veripark-vnet"
kv_name              = "veripark-kv"
tenant_id            = "<your-tenant-id>"
object_id            = "<your-user-or-sp-object-id>"

app_service_plan_name = "veripark-plan"
sku_tier              = "PremiumV2"
sku_size              = "P1v2"

app_bff_name         = "veripark-bff"
app_middleware_name  = "veripark-middleware"

sql_server_name      = "veripark-sqlserver"
sql_admin_login      = "sqladmin"
sql_admin_password   = "StrongP@ssword123"
sql_db_name          = "veriparkdb"

tags = {
  environment = "dev"
  project     = "veripark-ecommerce"
}