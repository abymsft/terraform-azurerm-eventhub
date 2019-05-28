output "namespace_name" {
  description = "Event hub namespace name."
  value       = "${azurerm_eventhub_namespace.ehubnamespace.name}"
}

output "namespace_id" {
  description = "The EventHub Namespace ID."
  value       = "${azurerm_eventhub_namespace.ehubnamespace.id}"
}

output "eventhub_name" {
  description = "Event hub name of the Azure event hub created."
  value       = "${azurerm_eventhub.ehub.name}"
}

output "eventhub_id" {
  description = "The EventHub ID."
  value       = "${azurerm_eventhub.ehub.id}"
}


output "name_space_location" {
  description = "Location of the created event hub namespace"
  value       = "${azurerm_eventhub_namespace.ehubnamespace.location}"
}
