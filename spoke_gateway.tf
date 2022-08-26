resource "aviatrix_spoke_gateway" "spoke_gateway_1" {
  single_az_ha = true
  gw_name      = "assurant-cus-1-spoke"
  vpc_id       = aviatrix_vpc.assurant-vnet-cus-1.vpc_id
  cloud_type   = 8
  vpc_reg      = "Central US"

  gw_size                           = "Standard_B1ms"
  account_name                      = "AZURE"
  subnet                            = "10.102.0.0/28"
  ha_subnet                         = "10.102.0.48/28"
  ha_gw_size                        = "Standard_B1ms"
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "spoke_gateway_2" {
  single_az_ha                      = true
  gw_name                           = "assurant-cus-2-spoke"
  vpc_id                            = aviatrix_vpc.assurant-vnet-cus-2.vpc_id
  cloud_type                        = 8
  vpc_reg                           = "Central US"
  gw_size                           = "Standard_B1ms"
  account_name                      = "AZURE"
  subnet                            = "10.103.0.0/28"
  ha_subnet                         = "10.103.0.48/28"
  ha_gw_size                        = "Standard_B1ms"
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "spoke_gateway_3" {
  single_az_ha = true
  gw_name      = "assurant-cus-3-spoke"
  vpc_id       = aviatrix_vpc.assurant-vnet-cus-3.vpc_id
  cloud_type   = 8
  vpc_reg      = "Central US"

  gw_size                           = "Standard_B1ms"
  account_name                      = "AZURE"
  subnet                            = "10.104.0.0/28"
  ha_subnet                         = "10.104.0.48/28"
  ha_gw_size                        = "Standard_B1ms"
  manage_transit_gateway_attachment = false
}
