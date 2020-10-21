# Configure the Docker provider
provider "docker" {}

#Image to be used by container
resource "docker_image" "terraform-centos" {
  name         = "centos:7"
  keep_locally = true
}

# Create a container
resource "docker_container" "centos" {
  image   = docker_image.terraform-centos.latest
  name    = "terraform-centos"
  start   = true
  command = ["/bin/sleep", "500"]
}
