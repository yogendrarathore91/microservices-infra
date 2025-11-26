variable "rgs" {
  description = "rg for acr"
  type = map(object({
    rg_name     = string
    location = string

    }))
}
