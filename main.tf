provider "ibm" {}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id = "bs79g2k20piq1r143ps0"
}
provider "kubernetes" {
  load_config_file       = "false"
  host                   = data.ibm_container_cluster_config.cluster_config.host
  token                  = data.ibm_container_cluster_config.cluster_config.token
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "terraform-example-namespace"
  }
