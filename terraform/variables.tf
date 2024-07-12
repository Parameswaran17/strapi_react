variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-west-2" # Change this to your preferred region
}

variable "strapi_docker_image" {
  description = "The Strapi Docker image."
  type        = string
}

variable "react_docker_image" {
  description = "The React Docker image."
  type        = string
}

variable "route53_zone_id" {
  description = "The Route 53 hosted zone ID."
  type        = string
}

variable "strapi_domain_name" {
  description = "The domain name for the Strapi application."
  type        = string
}

variable "react_domain_name" {
  description = "The domain name for the React application."
  type        = string
}
