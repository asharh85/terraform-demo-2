## Copyright (c) 2021, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl


#provider "oci" {
  #tenancy_ocid = var.tenancy_ocid
  #region       = var.region
#}

provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaxqwfl5asjcsdrj4r5lzoikkiuawnjswuqk4otoih75aawuqniw2a"
  user_ocid = "ocid1.user.oc1..aaaaaaaagmwza7dw6qw7bhmvvdiuebymhskhv5g3rlpmpden7dw5zhp2ewhq" 
  private_key_path = "C:/Users/ashhussa/Desktop/Personal/OCI_Terraform/oci_key/ociterraformworker.pem"
  fingerprint = "a4:fb:8f:c5:44:87:63:a5:21:d6:95:4d:7d:81:6c:98"
  region = "us-ashburn-1"
}

provider "oci" {
  alias        = "home_region"
  tenancy_ocid = var.tenancy_ocid
  #region       = var.region
  region       = lookup(data.oci_identity_regions.home_region.regions[0], "name")
}

provider "oci" {
  alias        = "current_region"
  tenancy_ocid = var.tenancy_ocid
  region       = var.region
}