terraform {
  required_providers {
    iosxe = {
      source = "CiscoDevNet/iosxe"
    }
  }
}

provider "iosxe" {
  username = "admin"
  password = "C1sc0123"
  url      = "https://10.32.32.1"
}

resource "iosxe_interface_loopback" "example" {
  name               = 200
  description        = "My First TF Script Attempt"
  shutdown           = false
  ipv4_address       = "200.200.200.200"
  ipv4_address_mask  = "255.255.255.255"
}
