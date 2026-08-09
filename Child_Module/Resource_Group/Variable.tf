variable "rg1" {
  type = map(object({
    name     = string
    location = string
  }))
}