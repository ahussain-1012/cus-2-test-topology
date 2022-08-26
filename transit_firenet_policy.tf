resource "aviatrix_transit_firenet_policy" "transit_firenet_policy_1" {
  transit_firenet_gateway_name = aviatrix_transit_gateway.transit_gateway_2.gw_name
  inspected_resource_name      = "SPOKE:assurant-cus-2-spoke"
}

resource "aviatrix_transit_firenet_policy" "transit_firenet_policy_2" {
  transit_firenet_gateway_name = aviatrix_transit_gateway.transit_gateway_2.gw_name
  inspected_resource_name      = "SPOKE:assurant-cus-1-spoke"
}

resource "aviatrix_transit_firenet_policy" "transit_firenet_policy_3" {
  transit_firenet_gateway_name = aviatrix_transit_gateway.transit_gateway_2.gw_name
  inspected_resource_name      = "SPOKE:assurant-cus-3-spoke"
}
