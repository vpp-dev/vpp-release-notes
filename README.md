@page release_notes_2101 Release notes for VPP 21.01

More than 145 commits since the previous release, including 77 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 21.01 release,
generated as of Fri Oct  2 10:24:24 UTC 2020.

## Features

- Plugins
  - CNat
    - Disable default scanner process (d63f73b83)
    - Ip ICMP error support (ece39214b)
    - Add support for SNat ICMP (613b2c3c7)
    - Introduce parametric source policy (ce25b60de)
    - Add DHCP support (af897c5e3)
  - DPDK
    - Call the meson-based build instead of Makefiles (4c4633cad)
  - Flowprobe
    - Add show commands for params and list of interfaces for recording (d1146f6dd)
- VNET
  - Native Virtio Drivers
    - Add packet buffering on tx (e347acbc3)
  - Session Layer
    - Add unix socket api for app attachment (61ae056bd)
- VPP Comms Library
  - Add support for app socket api (935ce75cb)
  - Provide apps access to fifo chunks (d68faf855)

## Known issues

For the full list of issues please refer to fd.io [JIRA](https://jira.fd.io).

## Fixed issues

For the full list of fixed issues please refer to:
- fd.io [JIRA](https://jira.fd.io)
- git [commit log](https://git.fd.io/vpp/log/?h=master)


### Newly deprecated API messages

These messages are still there in the API, but can and probably
will disappear in the next release.


### In-progress API messages

These messages are provided for testing and experimentation only.
They are *not* subject to any compatibility process,
and therefore can arbitrarily change or disappear at *any* moment.
Also they may have less than satisfactory testing, making
them unsuitable for other use than the technology preview.
If you are intending to use these messages in production projects,
please collaborate with the feature maintainer on their productization.


### Patches that changed API definitions

| @c src/plugins/map/map.api ||
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/plugins/l2tp/l2tp.api ||
| [6810a77da](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6810a77da) | misc: Move l2tp to plugin |

| @c src/plugins/nsim/nsim.api ||
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/plugins/lldp/lldp.api ||
| [3f9fdd984](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3f9fdd984) | lldp: Move to plugin |

| @c src/plugins/geneve/geneve.api ||
| [3a6adc52f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3a6adc52f) | geneve: Move to plugin |

| @c src/plugins/lisp/lisp-cp/lisp_types.api ||
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/lisp/lisp-cp/one.api ||
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/lisp/lisp-cp/lisp.api ||
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/lisp/lisp-gpe/lisp_gpe.api ||
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/cnat/cnat.api ||
| [af897c5e3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=af897c5e3) | cnat: Add DHCP support |

| @c src/plugins/nat/det44/det44.api ||
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/vnet/crypto/crypto.api ||
| [8c91b2ae2](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8c91b2ae2) | crypto: Crypto set handler API to support set all as CLI |

| @c src/vnet/cop/cop.api ||
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/vnet/devices/virtio/virtio.api ||
| [e347acbc3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e347acbc3) | virtio: add packet buffering on tx |
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/vnet/ipsec/ipsec.api ||
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/vnet/vxlan-gbp/vxlan_gbp.api ||
| [b468773aa](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b468773aa) | vxlan-gbp: Mark APIs as in-progress |


