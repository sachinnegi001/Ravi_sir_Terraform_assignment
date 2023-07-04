module "alert_resource" {

  source                       = "../alert"
  # type                         = var.type
  # Name                         = var.Name
  # discription                  = var.discription
  # violation_time_limit_seconds = var.violation_time_limit_seconds
  # Thrushold                    = var.Thrushold
  # Thrushold_duration           = var.Thrushold_duration
  # operator                     = var.operators
  condition = var.condition

}