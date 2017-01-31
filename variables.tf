variable "aws_region" {
  description = "AWS region"
  default     = "ap-southeast-2"
}

variable "envname" {
  description = "Environment Name"
  default     = "tools"
}

variable "envtype" {
  description = "Environment Type"
  default     = "test"
}

variable "es_domain_name" {
  description = "ElasticSearch Domain Name"
  default     = "esd"
}

variable "es_version" {
  description = "ElasticSearch Domain Version"
  default     = "5.1"
}

variable "es_instance_type" {
  description = "ElasticSearch Instance Type"
  default     = "m3.large.elasticsearch"
}

variable "es_instance_count" {
  description = "ElasticSearch Instance Count"
  default     = 2
}

variable "es_master_enabled" {
  description = "Enable ElasticSearch Dedicated Master Node"
  default     = false
}

variable "es_master_type" {
  description = "ElasticSearch Master Instance Type"
  default     = "m3.large.elasticsearch"
}

variable "es_master_count" {
  description = "ElasticSearch Master Node Count"
  default     = "0"
}

variable "es_zone_awareness_enabled" {
  description = "Enable Zone Awareness. Nodes must be EVEN number"
  default     = true
}

variable "es_volume_size" {
  description = "ElasticSearch Volume Size Per Node. Max Size varies by Instance Type"
  default     = "200"
}

/*
The variable below required escaped double quotes to render correctly as JSON object.
Use JOIN function to supply a list IP Addresses.
*/

variable "ip_addresses" {
  description = "List of IP Addresses"
  type        = "list"

  default = [
    "\"127.0.0.1\"",
  ]
}
