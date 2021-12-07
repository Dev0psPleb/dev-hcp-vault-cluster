resource "hcp_hvn" "vault" {
  hvn_id         = "vault"
  cloud_provider = "aws"
  region         = "us-west-2"
  cidr_block     = "172.25.16.0/20"
}

resource "hcp_vault_cluster" "vault-cluster" {
  cluster_id = "vault-cluster"
  hvn_id     = hcp_hvn.example.hvn_id
}