provider "ibm" {}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id = "bs79g2k20piq1r143ps0"
}
