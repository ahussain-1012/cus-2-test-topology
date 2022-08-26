resource "aviatrix_firewall_instance" "firewall_instance_1" {
  firewall_name          = "assurant-transit-egress-firewall-1"
  firewall_size          = "Standard_D3_v2"
  vpc_id                 = aviatrix_vpc.assurant-transit-egress.vpc_id
  firewall_image         = "Palo Alto Networks VM-Series Next-Generation Firewall Bundle 1"
  firewall_image_id      = "paloaltonetworks:vmseries1:bundle1:9.1.0"
  firewall_image_version = "9.1.0"
  egress_subnet          = "10.101.0.0/28"
  firenet_gw_name        = "assurant-transit-egress"
  username               = "panadmin"
  password               = "Aviatrix123#"
  management_subnet      = "10.101.0.32/28"
}



resource "aviatrix_firewall_instance" "firewall_instance_2" {
  firewall_name          = "pwc-transit-firenet-firewall-1"
  firewall_size          = "Standard_D3_v2"
  vpc_id                 = aviatrix_vpc.pwc-transit-firenet.vpc_id
  firewall_image         = "Palo Alto Networks VM-Series Next-Generation Firewall Bundle 1"
  firewall_image_id      = "paloaltonetworks:vmseries1:bundle1:9.1.0"
  firewall_image_version = "9.1.0"
  egress_subnet          = "10.100.0.0/28"
  firenet_gw_name        = "pwc-transit-firenet"
  username               = "panadmin"
  password               = "Aviatrix123#"
  management_subnet      = "10.100.0.32/28"
}

