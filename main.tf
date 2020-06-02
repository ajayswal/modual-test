module "dev" {
  source       = "../../modules/iks-cluster"
  space        = "dev"
  service      = "event-stream"
  team         = "b2c"
  org          = "twcoap@us.ibm.com"
  region       = "us-south"
  machine_type = "b2c.4x16"
  zones        = ["dal10", "dal12", "dal13"]

  ibmcloud_api_key      = "${var.ibmcloud_api_key}"
  iaas_classic_username = "${var.iaas_classic_username}"
  iaas_classic_api_key  = "${var.iaas_classic_api_key}"

  event_stream_plan      = "standard"
  event_stream_location  = "us-south"
  objectstorage_plan     = "standard"
  objectstorage_location = "global"

  multizone_pool_name          = "multizone"
  multizone_machine_type       = "u2c.2x4"
  multizone_hardware           = "shared"
  multizone_pool_size_per_zone = "2"
}

variable "iaas_classic_username" {}
variable "iaas_classic_api_key" {}
variable "ibmcloud_api_key" {}
