variable "infra_env" {
  type        = string
  description = "infrastructure environment"
}
 
variable "cidr" {
  type        = string
  description = "The IP range to use for the VPC"
  default     = "10.0.0.0/16"
}




variable "Role" {
  type = string
  
}

variable "web_inbound" {
    type=map(object({
        port=number
        protocol=string
        cidr=list(string)
      

    }))


 default = {
   "port80" = {
     cidr=["0.0.0.0/0"]
     port = 80
     protocol = "tcp"
   }
    "port443" = {
     cidr=["0.0.0.0/0"]
     port = 443
     protocol = "tcp port"
   }
   "port22" = {
     cidr=["0.0.0.0/0"]
     port = 22
     protocol = "tcp port"
   }
 }  
}