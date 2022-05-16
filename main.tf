# Configure docker provider
# terraform import docker_container.web $(docker inspect --format="{{.ID}}" hashicorp-learn)
#
# https://www.terraform.io/docs/providers/docker/index.html
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.16"
    }
  }
  required_version = ">= 0.14"
}

# Host path needed for wsl2
provider "docker" {
  host = "unix:///var/run/docker.sock"
}
