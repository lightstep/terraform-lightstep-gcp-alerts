terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = ">= 1.60.2"
    }
  }
  required_version = ">= v1.0.11"
}

resource "lightstep_metric_condition" "gcp_storage_failed_reqs" {
  project_name = var.lightstep_project
  name         = "GCP - Storage Failed Reqs"

  expression {
    evaluation_window   = "2m"
    evaluation_criteria = "on_average"
    is_multi            = true
    operand             = "above"
    thresholds {
      warning  = 80
      critical = 90
    }
  }

  metric_query {
    metric              = "storage.googleapis.com/api/request_count"
    query_name          = "a"
    timeseries_operator = "count"
    hidden              = false
    display             = "line"
    exclude_filters = [
      {
        key   = "response_code"
        value = "OK"
      }

    ]


    group_by {
      aggregation_method = "delta"
      keys               = ["resource_type"]
    }
  }

}