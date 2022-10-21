# Declare the Docker provider
terraform {
  required_providers {
    # Set the required provider and versions
    docker = {
      source = "kreuzwerker/docker"
      version = "2.22.0"
    }
  }
}

# Add the Docker provider configurations
provider "docker" {
  # Configuration options
  host = "npipe:////.//pipe//docker_engine"
}