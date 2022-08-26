resource "aviatrix_transit_gateway" "transit_gateway_1" {
  single_az_ha = true
  gw_name      = "assurant-transit-egress"
  vpc_id       = aviatrix_vpc.assurant-transit-egress.vpc_id
  cloud_type   = 8
  vpc_reg      = "Central US"

  gw_size                       = "Standard_B2ms"
  account_name                  = "AZURE"
  subnet                        = "10.101.0.32/26"
  enable_transit_firenet        = true
  enable_egress_transit_firenet = true
  ha_subnet                     = "10.101.0.48/26"
  ha_gw_size                    = "Standard_D3_V2"
  insane_mode                   = true
}

resource "aviatrix_transit_gateway" "transit_gateway_2" {
  single_az_ha      = true
  gw_name           = "pwc-transit-firenet"
  vpc_id            = aviatrix_vpc.pwc-transit-firenet.vpc_id
  cloud_type        = 8
  vpc_reg           = "Central US"
  connected_transit = true

  gw_size                = "Standard_B4ms"
  account_name           = "AZURE"
  subnet                 = "10.100.0.32/26"
  enable_transit_firenet = true
  ha_subnet              = "10.100.0.48/26"
  ha_gw_size             = "Standard_D3_V2"

  insane_mode = true

  enable_bgp_over_lan = true
}

