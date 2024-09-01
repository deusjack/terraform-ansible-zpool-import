# Doesn't need a trigger. On change the playbooks is automatically replaced.
variable "hostname" {
  type        = string
  description = "The hostname the ZPool is on"
}

variable "name" {
  type        = string
  description = "The name of the ZPool to import"
}
