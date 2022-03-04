
output "ip_address" {
   value = join("", module.aws-lightsail.*.ip_address)
}

output "arn" {
    value = join("", module.aws-lightsail.*.arn)

  }

 