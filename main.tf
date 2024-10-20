# provider
terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = ">= 0.2.0"
    }
  }
}

resource "random_id" "trigger" {
    byte_length = 8
}
