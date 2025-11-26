variable "sql_servers" {
  type = map(object({
    server_name = string
    rg_name     = string
    location    = string
    admin_login = string
    admin_pass  = string
  }))
}

variable "sql_dbs" {
  type = map(object({
    db_name    = string
    server_key = string  # kaunse server ke under DB banana hai (key of sql_servers)
  }))
}
