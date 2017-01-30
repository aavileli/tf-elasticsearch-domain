provider "aws" {
  region = "${var.aws_region}"
}

data "template_file" "access_policies" {
  template = "${file("${path.module}/policies/elasticsearch-access-policy.tpl")}"

  vars {
    IpAddresses = "${var.ip_addresses}"
  }
}

resource "aws_elasticsearch_domain" "es" {
  domain_name           = "${var.es_domain_name}"
  elasticsearch_version = "${var.es_version}"
  access_policies       = "${data.template_file.access_policies.rendered}"

  cluster_config {
    instance_type            = "${var.es_instance_type}"
    instance_count           = "${var.es_instance_count}"
    dedicated_master_enabled = "${var.es_master_enabled}"
    dedicated_master_type    = "${var.es_master_type}"
    dedicated_master_count   = "${var.es_master_count}"
    zone_awareness_enabled   = "${var.es_zone_awareness_enabled}"
  }

  ebs_options {
    ebs_enabled = "yes"
    volume_type = "gp2"
    volume_size = "${var.es_volume_size}"
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags {
    EnvName = "${var.envname}"
    EnvType = "${var.envtype}"
    Domain  = "${var.es_domain_name}"
  }
}
