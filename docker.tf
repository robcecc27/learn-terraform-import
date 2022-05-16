# docker_image.nginx
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# docker_container.web:
resource "docker_container" "web" {
  name  = "hashicorp-learn"
  image = docker_image.nginx.latest

  ports {
    external = 8081
    internal = 80
  }
}
