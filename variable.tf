variable "name" {
  type        = string
  default     = ""
}

variable "availability_zone" {
  type        = string
  default     = "ap-south-1a"

}

variable "key_name" {
  type = string
  default = ""
}

variable "bundle_id" {
    type = string
    default = "micro_2_1"
  
}

variable "blueprint_id" {
    type = string
    default = "ubuntu_20_04"
  
}

variable "tags" {
    type = map (any)
    default = {}
  
}

variable "public_key" {
    type = string
    default = ""
    sensitive   = true
  
}
 variable "public_key_name" {
   
   default =  ""
 }
 
variable "port_info" {
    type = list(object({

        protocol  = string
        port = number
        cidrs = list(string)
  
   }))
   default = null
}

variable "enabled" {
    type =  bool
    default = true
}

variable "static_ip_enabled" {
  type = bool
  default = true
  
}