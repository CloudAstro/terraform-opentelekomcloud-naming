variable "prefix" {
  description = <<-EOT
* `prefix` - (Optional) Name components before the service abbreviation. Case and embedded separators are preserved except for documented safe outputs.

Example input:
```hcl
prefix = ["ca"]
```
EOT
  type        = list(string)
  default     = []
  nullable    = false

  validation {
    condition     = alltrue([for part in var.prefix : part != null])
    error_message = "prefix must not contain null elements. Use an empty list to omit it."
  }
}

variable "infix" {
  description = <<-EOT
* `infix` - (Optional) Name components between the service abbreviation and suffix. Case and embedded separators are preserved except for documented safe outputs.

Example input:
```hcl
infix = ["eu-nl", "dev"]
```
EOT
  type        = list(string)
  default     = []
  nullable    = false

  validation {
    condition     = alltrue([for part in var.infix : part != null])
    error_message = "infix must not contain null elements. Use an empty list to omit it."
  }
}

variable "suffix" {
  description = <<-EOT
* `suffix` - (Optional) Name components after the service abbreviation. Case and embedded separators are preserved except for documented safe outputs.

Example input:
```hcl
suffix = ["application"]
```
EOT
  type        = list(string)
  default     = []
  nullable    = false

  validation {
    condition     = alltrue([for part in var.suffix : part != null])
    error_message = "suffix must not contain null elements. Use an empty list to omit it."
  }
}

variable "unique_seed" {
  description = <<-EOT
* `unique_seed` - (Optional) Literal suffix override, truncated to unique_length; not a random-generator seed. Empty uses a state-persisted random suffix. A shorter override is not padded.

Example input:
```hcl
unique_seed = "abcd1234"
```
EOT
  type        = string
  default     = ""
  nullable    = false
}

variable "unique_length" {
  description = <<-EOT
* `unique_length` - (Optional) Maximum characters taken from the override or generated suffix (an integer from 1 to 61). Long names can still truncate this suffix; see README.

Example input:
```hcl
unique_length = 6
```
EOT
  type        = number
  default     = 4
  nullable    = false

  validation {
    condition     = var.unique_length >= 1 && var.unique_length <= 61 && floor(var.unique_length) == var.unique_length
    error_message = "unique_length must be a whole number between 1 and 61."
  }
}

variable "unique_include_numbers" {
  description = <<-EOT
* `unique_include_numbers` - (Optional) Allow digits after the first letter of the generated suffix. Does not constrain unique_seed. Changing this replaces the generated random string.

Example input:
```hcl
unique_include_numbers = false
```
EOT
  type        = bool
  default     = true
  nullable    = false
}
