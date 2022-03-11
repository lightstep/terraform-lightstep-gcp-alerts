output "alert_url" {
  value       = module.lightstep_gcp_compute_alerts.alerts_url
  description = "Alerts URL"
}