terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = ">= 0.2.0"
    }
  }
}

resource "spacelift_environment_variable" "tf_log" {
  context_id  = data.spacelift_context.config.id
  name        = "TF_LOG"
  value       = "debug"
  write_only  = false
  description = "Terraform log level"
}
