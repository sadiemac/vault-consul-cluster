#! /bin/bash

cd terraform-aws-vault/examples/vault-consul-ami

packer build -only amazon-linux-2-ami vault-consul.json \
  -var-'ca_public_key_path=tls/ca.crt.pem'
  -var-'tls_public_key_path=tls/vault.crt.pem' 
  -var-'tls_private_key_path=tls/vault.key.pem' 
  -var consul_download_url='https://releases.hashicorp.com/consul/1.9.2/consul_1.9.2_linux_amd64.zip' 
  -var vault_download_url='https://releases.hashicorp.com/vault/1.6.1/vault_1.6.1_linux_amd64.zip' 
  -var consul_module_version='v0.8.0'

cd ../../../../