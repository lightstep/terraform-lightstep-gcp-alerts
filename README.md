# terraform-lightstep-gcp-alerts
Modules for managing GCP alerts in Lightstep
# Terraform Module for Lightstep GCP Alerts

**:warning:** You are viewing a **beta version** of the official
module to create and manage GCP-related Alerts inside Lightstep.

This is a Terraform module for deploying a pre-defined set of GCP-related alerts in Lightstep meant to be used with the [Lightstep GCP Cloud Monitoring Metrics integration](https://docs.lightstep.com/docs/setup-gcm-for-metrics).

## Pre-requisites

* Lightstep account and API Key with `member` permissons.
* [Lightstep GCP Cloud Monitoring Metrics integration](https://docs.lightstep.com/docs/setup-gcm-for-metrics) sending data to a Lightstep project.
* Terraform v1.0+

## Supported GCP Resources

Each GCP service has an associated module that will create Lightstep alerts. Currently, these resources are supported:


## How to Use This Module

This repo has the following folder structure:

* [modules](https://github.com/lightstep/terraform-lightstep-gcp-alerts/tree/master/modules): This folder contains several standalone, reusable, modules that you can use to create different types of Lightstep alerts for GCP services.
* [examples](https://github.com/lightstep/terraform-lightstep-gcp-alerts/tree/master/examples): This folder shows examples of different ways to define creation of alerts.
* [root folder](https://github.com/lightstep/terraform-lightstep-gcp-alerts/tree/master): The root folder is *an example* of how to use the 
  modules to create Lightstep GCP Alerts. The Terraform Registry requires the root of every repo to contain Terraform code, so we've put one of the examples there. This example is great for learning and experimenting, but for production use, please use the underlying modules in the [modules folder](https://github.com/lightstep/terraform-lightstep-gcp-alerts/tree/master/modules) directly.

To deploy create Lightstep alerts for production using this repo:

- Ensure account meets module pre-requisites from above.

- Create a Terraform configuration that pulls module(s) and specifies values
  of the required variables.

- Run `terraform init` and `terraform apply` with your API Key set in the environment variable `LIGHTSTEP_API_KEY` (or the environment variable name you specified in configuration).

## Development

This repository uses `pre-commit` to format and lint HCL code.

To install:

```
    $ brew install pre-commit
    $ pre-commit install
```
