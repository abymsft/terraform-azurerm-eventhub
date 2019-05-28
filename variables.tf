variable "resource_group_name" {
  description = "Default resource group name where the event hub namespace will be created."
  default     = "myeventhubns-rg"
}

variable "namespace_name" {
  description = "(Required) Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created."
}

variable "location" {
  description = "The location/region where the event hub namespace will be created. Changing this forces a new resource to be created."
}

variable "tags" {
  description = "(Optional) The tags to associate with your eventhub and eventhub namespace."
  type        = "map"

  default = {
    tag1 = ""
    tag2 = ""
  }
}

variable "sku" {
  description = " (Required) Defines which tier to use. Valid options are Basic and Standard. Default value passed is 'Basic' sku"
  type = "string"
  default = "Basic"
}

variable "capacity" {
  description = "(Optional) Specifies the Capacity / Throughput Units for a Standard SKU namespace. Valid values range from 1 - 20"
  type = "number"
}

variable "auto_inflate" {
  description = "(Optional) Auto-Inflate automatically scales the number of Throughput Units assigned to your Event Hubs Namespace when your traffic exceeds the capacity of the Throughput Units assigned to it. You can specify a limit to which the Namespace will automatically scale."
  default = "false"
}

variable "maximum_throughput_units" {
  description = "(Optional) Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from 1 - 20"
  type = "number"
}

variable "kafka_enabled"
{
  description = "(Optional) Is Kafka enabled for the EventHub Namespace? Defaults to false"
  default = "false"
}

variable "eventhub_name"
{
  description = "(Required) Specifies the name of the EventHub resource within a namespace. Changing this forces a new resource to be created."
}

variable "partition_count"
{
  description = "(Required) Specifies the current number of shards on the Event Hub. Changing this forces a new resource to be created."
  type = "number"
}

variable "message_retention"
{
  description = "(Required) Specifies the number of days to retain the events for this Event Hub. Needs to be between 1 and 7 days; or 1 day when using a Basic SKU for the parent EventHub Namespace."
  type = "number"
}
