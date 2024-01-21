# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  cloud {
#Make sure to replace "Your_Oragnization" wiith your actual Organization Name
    organization = "Your_Oragnization"
    workspaces {
#Make sure to replace "Your_Workspace" wiith your actual Workspace Name
      name = "Your_Workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }
  }

  required_version = "~> 1.3"
}

