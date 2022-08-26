resource "aviatrix_vpc" "pwc-transit-firenet" {
    cloud_type = 8
    account_name = "AZURE"
    name = "pwc-transit-firenet"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = true
    region = "Central US"
    cidr = "10.100.0.0/16"
}

resource "aviatrix_vpc" "assurant-transit-egress" {
    cloud_type = 8
    account_name = "AZURE"
    name = "assurant-transit-egress"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = true
    region = "Central US"
    cidr = "10.101.0.0/16"
}

resource "aviatrix_vpc" "assurant-vnet-cus-1" {
    cloud_type = 8
    account_name = "AZURE"
    name = "assurant-vnet-cus-1"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = "Central US"
    cidr = "10.102.0.0/24"
}

resource "aviatrix_vpc" "assurant-vnet-cus-2" {
    cloud_type = 8
    account_name = "AZURE"
    name = "assurant-vnet-cus-2"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = "Central US"
    cidr = "10.103.0.0/24"
}

resource "aviatrix_vpc" "assurant-vnet-cus-3" {
    cloud_type = 8
    account_name = "AZURE"
    name = "assurant-vnet-cus-3"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = "Central US"
    cidr = "10.104.0.0/24"
}
