variable "image_name" {
  description = "Name of the Docker image to use"
}

variable "container_memory" {
  description = "Memory limit for the Docker container"
  default     = "512m"
}

variable "privileged" {
  description = "Whether the container should be privileged or not"
  default     = false
}

variable "num_containers" {
  description = "Number of containers to spawn"
  default     = 1
}

variable "external_port" {
  description = "Port external to use"
  default     = 3000
}
