output "sc" {
    value = [for k in var.role: k ]
        
    }
  

  # output "sc1" {
  #   value = module.sc-grp.security_group_private
        
  #   }
  
