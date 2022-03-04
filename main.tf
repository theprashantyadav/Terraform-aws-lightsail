resource "aws_key_pair" "main" {
  key_name   = var.key_name
  public_key = var.public_key
}


resource "aws_lightsail_instance" "main" {
  count = var.enabled ? 1 : 0
  name              = var.name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  tags              = var.tags
  user_data         = ""
  key_pair_name     = aws_key_pair.main.id
}

#
resource "aws_lightsail_instance_public_ports" "main" {
  instance_name = join("", aws_lightsail_instance.main.*.name)
  
    dynamic "port_info" {
    for_each = var.port_info == null ? [] : var.port_info


    content {

    protocol  = port_info.value.protocol
    from_port = port_info.value.port
    to_port   = port_info.value.port
    cidrs     = port_info.value.cidrs

    }
}

}

resource "aws_lightsail_static_ip" "main" {
  count = var.enabled && var.static_ip_enabled ? 1 : 0
  name = "static_ip"
}


resource "aws_lightsail_static_ip_attachment" "static_ip" {
  static_ip_name = join("", aws_lightsail_static_ip.main.*.id)
  instance_name  = join("", aws_lightsail_instance.main.*.id)

}
