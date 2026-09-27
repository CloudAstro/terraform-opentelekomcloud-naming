module "naming" {
  source = "../.."

  prefix                 = ["ca"]
  infix                  = ["eu-nl", "dev"]
  suffix                 = ["application"]
  unique_seed            = "abcd1234"
  unique_length          = 6
  unique_include_numbers = false
}
