## Copyright (c) 2021, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaaxqwfl5asjcsdrj4r5lzoikkiuawnjswuqk4otoih75aawuqniw2a"
  }
variable "region" { 
  default = ""
}
variable "ssh_public_key" {
  default = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmdHz9UhhkKcvwqzIjDIkASjByGrL7jfHl06FYIl3hvLz0eATlkysRvtFgBJLfTWfS2YAhrOP/2V30vCUtsFQyEA1F0KtAtC5Uvg/ciElMrAdxrtXuePGkevXzev57bJkA2uXGXcZ1IX3Zo0yZN7ddhDU7JMIdO4fOEddl+UmHsulDABUSNYS+BWK/0QYOOsxQ2ZgYyleWPWL7beU2Hki7VXQy+Yrzb1D5PTvyXxzuGI8FQcAt1QS9krY2CiLmrJnipo1Se5LXA3JuHsfuhzKa8zS33QWYsroGSVttE3ykY6qGCH1xqPx4btvk4HnlhbOSmjaIusOBZA4x5oI2iCF6QIDAQAB"
}
variable "compartment_ocid" {
}

variable "availablity_domain_name" {
  default = ""
}
variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "Subnet-CIDR" {
  default = "10.0.1.0/24"
}

variable "instance_shape" {
  description = "Instance Shape"
  default     = "VM.Standard.E3.Flex"
}

variable "instance_ocpus" {
  default = 1
}

variable "instance_shape_config_memory_in_gbs" {
  default = 1
}

variable "instance_os" {
  description = "Operating system for compute instances"
  default     = "Oracle Linux"
}

variable "linux_os_version" {
  description = "Operating system version for all Linux instances"
  default     = "7.9"
}
