# MiniUPnPd - Lease script version

This is a fork from [miniupnp/miniupnpd](https://github.com/miniupnp/miniupnp/miniupnpd) allowing to execute a shell script on UPnP leasing (similar to dnsmasq lease script).

To enable this option, add `#define ENABLE_LEASESCRIPT` in your `config.h` file
prior to building the project. **The LEASEFILE option must be enabled for it to work.**
Using [`genconfig.sh`](./genconfig.sh), the lease script option is enabled along with the pre-existing lease_file option.


# MiniUPnP project

MiniUPnP project
(c) 2006-2017 Thomas Bernard
webpage: http://miniupnp.free.fr/ or https://miniupnp.tuxfamily.org/
github: https://github.com/miniupnp/miniupnp
freecode: http://freecode.com/projects/miniupnp
contact: miniupnp@free.fr

This directory contain the miniUPnP daemon software, aka miniUPnPd.
This software is subject to the conditions detailed in
the LICENSE file provided with this distribution.


The miniUPnP daemon is an UPnP IGD (internet gateway device)
which provide NAT traversal services to any UPnP enabled client on
the network.
See http://www.upnp.org/ for more details on UPnP.
During the year 2011, support for IGD v2 has been added.
In 2012, IGD v2 WANIPv6FirewallControl has been implemented.

IGD2 is still not enabled by default because of interoperability
issues.

In addition to UPnP IGD, miniUPnPd supports NAT-PMP and PCP :

See information about NAT Port Mapping Protocol (NAT-PMP) here :
http://miniupnp.free.fr/nat-pmp.html
NAT-PMP is the precursor of Port Control Protocol (PCP, RFC 6887).
In 2013, support for PCP has been added too.

Read the INSTALL file for instructions to compile, install and
configure miniupnpd on your system.

Report bugs to miniupnp@free.fr or on the web forum
https://miniupnp.tuxfamily.org/forum/
or using https://github.com/miniupnp/miniupnp/issues

Thomas Bernard
