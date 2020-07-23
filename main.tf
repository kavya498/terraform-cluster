provider "ibm" {}
/*resource "ibm_container_cluster" "cluster" {
  name              = "${var.cluster_name}${random_id.name.hex}"
  datacenter        = "${var.datacenter}"
  no_subnet         = true
  default_pool_size = 2
  machine_type      = "${var.machine_type}"
  hardware         = "shared"
  public_vlan_id    = "${var.public_vlan_id}"
  private_vlan_id   = "${var.private_vlan_id}"
}*/


data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id = "c88557ca-c79e-4cf0-88b1-1713cdd6976d"
}

resource "random_id" "name" {
  byte_length = 4
}
