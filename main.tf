variable "appliance_url" {}
variable "account" {}
variable "login" {}
variable "api_key" {}
#variable "ssl_cert_path" {}
variable "ssl_cert" {}
variable "conjur_secret_id_1" {}


variable "aws_region" { type = string, default = "ca-central-1"  }

# data.conjur_secret.db_password.value will be set by the Conjur Provider
output "secret_1_output" {
  //noinspection HILUnresolvedReference
  value = data.conjur_secret.secret_1.value
  # Must mark this output as sensitive for Terraform v0.15+,
  # because it's derived from a Conjur variable value that is declared as sensitive.
  sensitive = true
}

