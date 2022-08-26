variable "controller_ip" {
  type        = string
  description = "IP address of the Aviatrix Controller"
}

variable "controller_username" {
  type        = string
  description = "Username for the Aviatrix Controller"
  default     = ""
}

variable "controller_password" {
  type        = string
  description = "Password for the Aviatrix Controller"
  default     = ""
}

variable "account_name" {
  type        = string
  description = "AWS  account name in the Aviatrix Controller"
  default     = ""
}

variable "location" {
  type        = string
  description = "Location for resources"
  default     = ""
}
