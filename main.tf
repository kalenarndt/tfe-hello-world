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

output "new_day" {
  value = "It's a new day!"
}

resource "random_pet" "pet" {
  length = 4
}

output "pet" {
  value = random_pet.pet.id
}