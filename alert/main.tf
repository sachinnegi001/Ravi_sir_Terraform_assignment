
resource "newrelic_alert_policy" "alert" {
  name = "SachinPolicy1"
}

# Add a condition
resource "newrelic_nrql_alert_condition" "FirstTest" {
  count = length(var.condition)


  policy_id                    = newrelic_alert_policy.alert.id
  type                         = var.condition[count.index]["type"]
  name                         = var.condition[count.index]["Name"]
  description                  = var.condition[count.index]["discription"]
  runbook_url                  = "https://www.example.com"
  enabled                      = true
  violation_time_limit_seconds =  var.condition[count.index]["violation_time_limit_seconds"]

  nrql {
    query = "SELECT average(host.cpuPercent) AS 'CPU used %' FROM Metric WHERE `entityGuid` = 'MzkzMzUyOHxJTkZSQXxOQXwyMjc2MjE3MDc2MTMwMzAzMTA'"
  }

  critical {
    operator              = var.condition[count.index]["operators"]
    threshold             = var.condition[count.index]["Thrushold"]
    threshold_duration    = var.condition[count.index]["Thrushold_duration"]
    threshold_occurrences = "ALL"
  }
}
