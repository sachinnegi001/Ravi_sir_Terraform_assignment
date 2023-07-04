output "output" {
    value = [for i in newrelic_nrql_alert_condition.FirstTest:i["policy_id"] ]
  
}