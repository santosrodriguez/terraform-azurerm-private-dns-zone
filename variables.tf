variable "fqdn" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "soa_record" {
  type = object({
    ttl = optional(number)
    email = optional(string)
    minimum_ttl = optional(number)
    refresh_time = optional(number)
    retry_time = optional(number)
    expire_time = optional(number)
    tags = optional(map(string))
  })
  default = {}
}

variable "tags" {
  type = map(string)
  default = {}
}
