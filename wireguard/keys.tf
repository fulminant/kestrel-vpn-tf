resource "tls_private_key" "wireguard_server_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
