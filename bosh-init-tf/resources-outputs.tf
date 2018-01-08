output "default_key_name" {
  value = "${openstack_compute_keypair_v2.bosh.name}"
}

output "external_ip" {
  value = "${var.ip_failover}"
}
