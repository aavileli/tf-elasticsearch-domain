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
  default     = "2.3"
}

variable "es_instance_type" {
  description = "ElasticSearch Instance Type"
  default     = "m3.large"
}

variable "es_instance_count" {
  description = "ElasticSearch Instance Count"
  default     = 2
}

variable "es_master_enabled" {
  description = "Enable ElasticSearch Dedicated Master Node"
  default     = "no"
}

variable "es_master_type" {
  description = "ElasticSearch Master Instance Type"
}

variable "es_master_count" {
  description = "ElasticSearch Master Node Count"
}

variable "zone_awareness_enabled" {
  description = "Enable Zone Awareness. Nodes must be EVEN number"
  default     = "yes"
}

variable "es_volume_size" {
  description = "ElasticSearch Volume Size Per Node. Max Size varies by Instance Type"
  default     = "200"
}
