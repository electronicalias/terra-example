resource "aws_vpc_peering_connection" "pci" {
    peer_vpc_id = "${module.pci_vpc.vpc_id}"
    vpc_id = "${module.vpc.vpc_id}"
    auto_accept = true
    tags {
      Name = "VPC Peering between Main and PCI Segment"
    }
    accepter {
      allow_remote_vpc_dns_resolution = true
    }
    requester {
      allow_remote_vpc_dns_resolution = true
    }
}
