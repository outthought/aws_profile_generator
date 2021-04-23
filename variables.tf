variable "accounts" {
  type        = map(string)
  description = "AWS account name to account number."
}

variable "duration_seconds" {
  type        = number
  default     = 3600
  description = "Max duration of role session in seconds. 900 to 43200. 15 minutes to 12 hours."

  validation {
    condition     = var.duration_seconds >= 900 && var.duration_seconds <= 43200
    error_message = "Value must be between 900 and 43200."
  }
}

variable "output" {
  type        = string
  default     = "json"
  description = "Specifies how the results are formatted."

  validation {
    condition     = contains(["json", "table", "text", "yaml", "yaml-stream"], var.output)
    error_message = "Valid values: json table text yaml yaml-stream."
  }
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region."
}

variable "role_name" {
  type        = string
  description = "Name of AWS IAM role to assume."
}

variable "mfa_serial" {
  type        = string
  description = "The identification number of an MFA device to use when assuming a role."
}

