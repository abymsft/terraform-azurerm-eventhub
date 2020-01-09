variable "resource_group_name" {
  default = "ehubResourceGroup"
}

variable "location" {
  default = "westeurope"
}

variable "ehub_name" {
  default = "mytestehub"
}

variable "ehub_namespace_name" {
  default = "mytestehubnamespace"
}

variable "sql_admin_username" {
  default = "azureuser"
}

variable "sql_password" {
  default = "P@ssw0rd12345!"
}

variable "start_ip_address" {
  default = "0.0.0.0"
}

variable "end_ip_address" {
  default = "255.255.255.255"
}
