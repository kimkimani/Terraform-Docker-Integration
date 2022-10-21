# Creating a Docker Image ubuntu with the latest as the Tag

# -> docker pull nginx:latest
# Create a docker image resource
resource "docker_image" "react_image" {               
  name = "react_image"

  build {   
    path = "../react-docker"
    dockerfile = "app.dockerfile"
  }

}

# Create a docker container resource
resource "docker_container" "react_container" {   
  # the name of the container
  name = "react_container"  
  image = docker_image.react_image.image_id
    ports {
    internal = "80"
    external = "8080"
  }
}
