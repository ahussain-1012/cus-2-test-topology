resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_1" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_1.gw_name
  transit_gw_name = aviatrix_transit_gateway.transit_gateway_2.gw_name
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_2" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_1.gw_name
  transit_gw_name = aviatrix_transit_gateway.transit_gateway_1.gw_name
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_3" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_2.gw_name
  transit_gw_name = aviatrix_transit_gateway.transit_gateway_2.gw_name
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_4" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_2.gw_name
  transit_gw_name = aviatrix_transit_gateway.transit_gateway_1.gw_name
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_5" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_3.gw_name
  transit_gw_name = aviatrix_transit_gateway.transit_gateway_2.gw_name
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_6" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_3.gw_name
  transit_gw_name = aviatrix_transit_gateway.transit_gateway_1.gw_name
}

