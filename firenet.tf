resource "aviatrix_firenet" "firenet_1" {
  vpc_id                               = aviatrix_vpc.assurant-transit-egress.vpc_id
  inspection_enabled                   = false
  egress_enabled                       = true
  manage_firewall_instance_association = false
  tgw_segmentation_for_egress_enabled  = false
  hashing_algorithm                    = "5-Tuple"
}

resource "aviatrix_firenet" "firenet_2" {
  vpc_id                               = aviatrix_vpc.pwc-transit-firenet.vpc_id
  inspection_enabled                   = true
  egress_enabled                       = false
  manage_firewall_instance_association = false
  tgw_segmentation_for_egress_enabled  = false
  hashing_algorithm                    = "5-Tuple"
}
