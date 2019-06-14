resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

resource "azurerm_eventhub_namespace" "ehubnamespace" {
  name                     = "${var.namespace_name}"
  location                 = "${var.location}"
  resource_group_name      = "${var.resource_group_name}"
  sku                      = "${var.sku}"
  capacity                 = "${var.capacity}"
  auto_inflate_enabled     = "${var.auto_inflate}"
  maximum_throughput_units = "${var.maximum_throughput_units}"
  kafka_enabled            = "${var.kafka_enabled}"
  tags                     = "${var.tags}"
}

resource "azurerm_eventhub_namespace_authorization_rule" "ehub_namespace_auth_rule" {
  name                = "${var.ehub_namespace_authrule_name}"
  namespace_name      = "${azurerm_eventhub_namespace.ehubnamespace.name}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  listen              = "${var.ehub_namspace_authrule_listen}"
  send                = "${var.ehub_namespace_authrule_send}"
  manage              = "${var.ehub_namespace_authrule_manage}"
}

resource "azurerm_eventhub" "ehub" {
  name                = "${var.eventhub_name}"
  namespace_name      = "${azurerm_eventhub_namespace.ehubnamespace.name}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  partition_count     = "${var.partition_count}"
  message_retention   = "${var.message_retention}"
}

resource "azurerm_eventhub_authorization_rule" "ehub_auth_rule" {
  name                = "${var.ehub_authrule_name}"
  namespace_name      = "${azurerm_eventhub_namespace.ehubnamespace.name}"
  eventhub_name       = "${azurerm_eventhub.ehub.name}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  listen              = "${var.ehub_authrule_listen}"
  send                = "${var.ehub_authrule_send}"
  manage              = "${var.ehub_authrule_manage}"
}

resource "azurerm_eventhub_consumer_group" "ehub_consumer_group" {
  name                = "${var.ehub_consumer_group_name}"
  namespace_name      = "${azurerm_eventhub_namespace.ehubnamespace.name}"
  eventhub_name       = "${azurerm_eventhub.ehub.name}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  user_metadata       = "${var.ehub_consumer_group_user_metadata}"
}
