# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 8
  }
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 1
  }
}
