# MiniUPnPd - Lease script version

This is a fork from [miniupnp/miniupnpd](https://github.com/miniupnp/miniupnp/miniupnpd) allowing to execute a shell script when an UPnP leasing operation is performed (similar to dnsmasq's lease script option). This allows you to track UPnP leases a little easier.

## Table of Contents

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [MiniUPnPd - Lease script version](#miniupnpd-lease-script-version)
	- [Table of Contents](#table-of-contents)
	- [Getting started](#getting-started)
		- [Usage](#usage)
		- [Example of use](#example-of-use)
	- [Installation](#installation)
- [Original README](#original-readme)

<!-- /TOC -->

## Getting started
### Usage

In your `miniunp.conf` configuration file, specify the path to the shell script you want to execute upon an UPnP lease or configuration change with `lease_script=<path>` option.

Whenever a new UPnP lease is created, or an old one destroyed, the executable specified by this option is run. `<path>` must be an absolute pathname, no `PATH` search occurs.
In that specific order, the arguments to the process are:
  - `up` (update operation), `add` (new port mapping), `del` (delete operation);
  - The `wan port` to which the service is mapped to;
  - The `protocol` code;
  - The `lan address` to the host of the service;
  - The `lan port` to the service;
  - A `description` of the port forwarding rule that has been executed.

### Example of use

You may find an example a `miniupnp.conf` configuration file in [examples/mqttpub](./examples/mqttpub).
This example requires `mosquitto_pub` to be installed on your machine, and a `mqtt` broker to run on your local environment.

Assuming you copied the [`mqttpub.sh`](./examples/mqttpub/mqttpub.sh) script to your local `/tmp` directory, executing `miniupnp` with the example configuration file will publish a new mqtt message to your broker's `network/upnp` topic each time a new uPnP operation is performed.

## Installation

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

1. Refer to the [`INSTALL`](./INSTALL) file for installation;

2. **Prior to building the project** (`make -f Makefile.linux`), make sure you have the following flag enabled in your `config.h` file:
  ```c
  #define ENABLE_LEASESCRIPT
  ```

- Alternatively, using the [`genconfig.sh`](./genconfig.sh) script (cross-compilation / Buildroot / OpenWRT builds), the option is enabled along with the `--leasefile` flag.

# Original README

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
