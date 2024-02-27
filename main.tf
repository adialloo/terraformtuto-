terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "custom_image" {
  name = var.image_name
}

resource "docker_container" "custom_containers" {
  count = var.num_containers

  image          = docker_image.custom_image.latest
  name           = "container-${count.index}"
  memory         = var.container_memory
  privileged     = var.privileged
  restart_policy = "always"

  ports {
    internal = 80
    external = var.external_port
  }
}
