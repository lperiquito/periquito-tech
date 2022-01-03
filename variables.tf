variable "domain_name" {
  type = string
  description = "The domain name for the website."
}

variable "bucket_name" {
  type = string
  description = "The name of the bucket which will hold the static site"
}

variable "state_bucket_name" {
  type = string
  description = "The name of the bucket which will hold the TF state file"
}
