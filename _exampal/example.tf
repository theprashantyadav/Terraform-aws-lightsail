provider "aws" {
  region = "ap-south-1"
}

module "aws-lightsail" {
  source            = "../"
  name              = "aws-lightsail"
  public_key_name   = "test"
  bundle_id         =  "micro_2_1"
  static_ip_enabled = true
  enabled           = true
  key_name          = "main_key"
  public_key        ="ABC"
  #public_key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDMw9taDn3K84VTc8hA4Sm+tCmh6pg53eSeIvHpJoH5VN917JHNcDf/C8rA0bl6RrRpmDXieA5313Br3UP5qXZSebyRA+WcXtxB8zk9xntliwXU+GpX4WCMcCPLgDkUbbmKInESoH2DFnqgfxyWQaOYZJ2W7/6Aa17qTtrT04FdQel2jdNGjp7BwjHFJxAiSUbDuJPFjZUoEATpryUyT4opAQh7lo/ZwSxrH6wPSGAC0npp/hiJ8/PN2zpFbVJBlHXX96bCGfYQUC013xN54z4HmElGTCtC45SGQ766lmGiIRfxUh/EprjrCQ/u0yOidz1l/eed/CruKss2Vzgd9CnA4tB/3UhsAnEZoTz2Qb4NnWIdHZC8kKIlAumQxLEb/yukofdO0JEGi07LsgwRx1gDcESFzcfnHHNXMybrPU3YrOPI9x22QHt5ufmeZTw3zqIsm7plxhUlhwaIEOzKLjZC9Y9L6FAulz0uMKsOdDqXKAkrujI6/cgxHqUZ8oq8t8E= prashant@prashant"
  port_info         = [
      {
   port = 80
   protocol = "tcp"
   cidrs = ["0.0.0.0/0"]
   
  },
  {
   port = 22
   protocol = "tcp"
   cidrs = ["103.15.255.118/32"]
   
  }
  
  ]

  tags       = {
    created_by = "Prashant"
  }
}