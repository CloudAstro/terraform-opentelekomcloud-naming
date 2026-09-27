resource "random_string" "main" {
  length  = 60
  special = false
  upper   = false
  numeric = var.unique_include_numbers
}

resource "random_string" "first_letter" {
  length  = 1
  special = false
  upper   = false
  numeric = false
}
