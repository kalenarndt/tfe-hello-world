terraform {
  required_version = ">=1.3.0"
  cloud {
    hostname = "tfe.bmrf.io"
    organization = "my-org"

    workspaces {
      name = "flux-tf-controller"
    }
  }
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

output "hello_world" {
  value = "Hello, ${var.subject}!"
}