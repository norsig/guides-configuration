environment "aws" {
  role = "nomad-server"
}

vault {
  address = "https://vault.service.atlas:8200"
  mount_path = "auth/aws-ec2"
}

serve "file" {
  path = "/secrets/nomad-server-token"
  format = "environment"
}
