output "server_private_key" {
  value     = tls_private_key.wireguard_server_key.private_key_pem
  sensitive = true
}

output "server_ip" {
  value = aws_eip.elastic_ip.public_ip
}
