variable "aks" {
  type = map(object({
    aks_name          = string
    rg_name           = string
    location          = string
    dns_prefix        = string
    default_pool_name = string
    node_count        = number
    vm_size           = string
  }))
}
