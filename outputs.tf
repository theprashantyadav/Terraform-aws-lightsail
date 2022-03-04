output "ip_address" {
  value = join("", aws_lightsail_instance.main.*.public_ip_address)
  
}

output "arn" {
   value = join("", aws_lightsail_instance.main.*.arn)

  
}

output "bundle_id" {
    value = join("", aws_lightsail_instance.main.*.bundle_id)
  
}

