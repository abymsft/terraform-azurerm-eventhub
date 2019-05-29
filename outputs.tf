output "namespace_name" {
  description = "Event hub namespace name."
  value       = "${azurerm_eventhub_namespace.ehubnamespace.name}"
}

output "namespace_id" {
  description = "The EventHub Namespace ID."
  value       = "${azurerm_eventhub_namespace.ehubnamespace.id}"
}

output "namespace_auth_rule_id" {
  description = "The EventHub ID"
  value       = "${azurerm_eventhub_namespace_authorization_rule.ehub_namespace_auth_rule.id}"
}

output "namespace_auth_rule_primarykey" {
  description = "The Primary Key for the Authorization Rule"
  value       = "${azurerm_eventhub_namespace_authorization_rule.ehub_namespace_auth_rule.primary_key}"
}
output "namespace_auth_rule_primary_connectionstring" {
  description = " The Primary Connection String for the Authorization Rule."
  value       = "${azurerm_eventhub_namespace_authorization_rule.ehub_namespace_auth_rule.primary_connection_string}"
}

output "namespace_auth_rule_secondarykey" {
  description = "The Secondary Key for the Authorization Rule."
  value       = "${azurerm_eventhub_namespace_authorization_rule.ehub_namespace_auth_rule.secondary_key}"
}
output "namespace_auth_rule_secondary_connectionstring" {
  description = "The Secondary Connection String for the Authorization Rule."
  value       = "${azurerm_eventhub_namespace_authorization_rule.ehub_namespace_auth_rule.secondary_connection_string}"
}

output "eventhub_name" {
  description = "Event hub name of the Azure event hub created."
  value       = "${azurerm_eventhub.ehub.name}"
}

output "eventhub_id" {
  description = "The EventHub ID."
  value       = "${azurerm_eventhub.ehub.id}"
}

output "ehub_auth_rule_id"
{
  description = "The EventHub ID"
  value       = "${azurerm_eventhub_authorization_rule.ehub_auth_rule.id}"
}

output "ehub_auth_rule_primarykey"
{
  description = "The Primary Key for the Event Hubs authorization Rule."
  value       = "${azurerm_eventhub_authorization_rule.ehub_auth_rule.primary_key}"
}

output "ehub_auth_rule_primary_connectionstring"
{
  description = "The Primary Connection String for the Event Hubs authorization Rule."
  value       = "${azurerm_eventhub_authorization_rule.ehub_auth_rule.primary_connection_string}"
}

output "ehub_auth_rule_secondarykey"
{
  description = "The Secondary Key for the Event Hubs authorization Rule."
  value       = "${azurerm_eventhub_authorization_rule.ehub_auth_rule.secondary_key}"
}

output "ehub_auth_rule_secondary_connectionstring"
{
  description = "The Secondary Connection String for the Event Hubs authorization Rule"
  value       = "${azurerm_eventhub_authorization_rule.ehub_auth_rule.secondary_connection_string}"
}

output "ehub_consumer_group_id"
{
  description = "The EventHub Consumer Group ID."
  value       = "${azurerm_eventhub_consumer_group.ehub_consumer_group.id}"
}




