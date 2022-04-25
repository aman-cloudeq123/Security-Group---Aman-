module "sc-grp"{

    for_each = var.role
    source = "../"
  
    infra_env=each.key
    Role=each.value.Role
    
    
}