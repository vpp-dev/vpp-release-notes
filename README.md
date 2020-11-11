## What is this ?

These are the in-progress release notes for the "next" VPP release.

The next release number is determined from vXX.YY-rc0 tag that
has been laid on master branch. It may or may not be actual
release number, so do not take it as a commitment unless it
has been confirmed at the VPP Community meeting!

## How it works ?

There are two github actions, one which generates the RELEASE-GENERATED.md, and is run on a daily basis.
It automatically builds the release notes based on the information - commits and MAINTAINERS file -
from the VPP repository, and pushes the result to this repository.

The second action, which is run on push (thus also after the first one) or on demand, applies vXX.YY.sed command script to
the RELEASE-GENERATED.md, and puts it into RELEASE.md, which is rady to be merged into the VPP's RELEASE.md
file.  It also merges the HOW-IT-WORKS.md and RELEASE.md into README.md to save you an extra click.
It does not push the repo if there were no changes made, to avoid an infinite loop.

## How to edit ?

Clone this repo, edit the vXX.YY.sed file, submit a pull request,
or just push if you have the access.

Yes, you need to know sed, but it's probably just search-replace,
which are "s/what-to-search/what-to-replace-with/", so should not
be too hard hopefully.

WARNING: you might need to do a rebase if the RELEASE\* files get
updated by the automatic jobs in the meantime.
Just do: "git fetch; git rebase FETCH\_HEAD" if your push fails.

## Who do I give the kudos and complaints to ?

Andrew Yourtchenko ayourtch@gmail.com or @ayourtch on twitter

# Draft Release Notes below


@page release_notes_2101 Release notes for VPP 21.01

More than 373 commits since the previous release, including 185 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 21.01 release, generated as on Wed Nov 11 01:21:16 UTC 2020.



REMINDER: this is work in progress..



## Features

- Plugins
  - AF\_XDP driver
    - Add option to claim all available rx queues ([d4e109138](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d4e109138))
  - CNat
    - Disable default scanner process ([d63f73b83](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d63f73b83))
    - Ip ICMP error support ([ece39214b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ece39214b))
    - Add support for SNat ICMP ([613b2c3c7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=613b2c3c7))
    - Introduce parametric source policy ([ce25b60de](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ce25b60de))
    - Add DHCP support ([af897c5e3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=af897c5e3))
  - DPDK
    - Call the meson-based build instead of Makefiles ([4c4633cad](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4c4633cad))
  - Internet Key Exchange (IKEv2) Protocol
    - Support ipv6 traffic selectors & overlay ([84962d19b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=84962d19b))
    - Cli for disabling dead peer detection ([af4a414eb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=af4a414eb))
    - Add option to disable NAT traversal ([d7fc12f07](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d7fc12f07))
  - RDMA (ibverb) driver
    - Add RSS support for IPv6 and TCP ([91603958d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=91603958d))
  - VRRP
    - Asynchronous events on VR state change ([78f487e11](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=78f487e11))
  - Flowprobe
    - Add show commands for params and list of interfaces for recording ([d1146f6dd](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d1146f6dd))
- Statistics Segment
  - Counters data model ([148c7b768](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=148c7b768))
- VNET
  - Feature Arcs
    - Add packet trace API ([c0b195450](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c0b195450))
  - IPSec
    - Support for multipoint on ipsec interfaces ([6ba4e41d3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6ba4e41d3))
    - Tunnel SA DSCP behaviour ([041add7d1](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=041add7d1))
  - Native Virtio Drivers
    - Add packet buffering on transmit path ([e347acbc3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e347acbc3))
  - Segment Routing (IPv6 and MPLS)
    - Show IPv6 address used as SRv6 Encaps source ([448bc81d3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=448bc81d3))
  - Session Layer
    - Add unix socket API for app attachment ([61ae056bd](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=61ae056bd))
    - Per worker state for ct sessions ([2d0e3de14](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2d0e3de14))
  - TAP Drivers
    - Allow change of carrier state on host ([bd50ed18d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=bd50ed18d))
    - Add function to set speed ([a6c34a19d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a6c34a19d))
- VPP Comms Library
  - Add support for app socket API ([935ce75cb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=935ce75cb))
  - Provide apps access to fifo chunks ([d68faf855](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d68faf855))
- VPP Executable
  - Use VPP heap for libc ([ec4749a20](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ec4749a20))

## Known issues

For the full list of issues please refer to fd.io [JIRA](https://jira.fd.io).

## Fixed issues

For the full list of fixed issues please refer to:
- fd.io [JIRA](https://jira.fd.io)
- git [commit log](https://git.fd.io/vpp/log/?h=master)


## API changes

Description of results:

* _Definition changed_: indicates that the API file was modified between releases.
* _Only in image_: indicates the API is new for this release.
* _Only in file_: indicates the API has been removed in this release.

Message Name                                                 | Result
-------------------------------------------------------------|------------------
cnat_get_snat_addresses                                      | only in image
cnat_get_snat_addresses_reply                                | only in image
cnat_session_details                                         | definition changed
cnat_set_snat_addresses                                      | definition changed
cnat_translation_details                                     | definition changed
cnat_translation_update                                      | definition changed
det44_plugin_enable_disable                                  | definition changed
graph_node_details                                           | only in image
graph_node_get                                               | only in image
graph_node_get_reply                                         | only in image
ikev2_profile_details                                        | definition changed
ikev2_profile_disable_natt                                   | only in image
ikev2_profile_disable_natt_reply                             | only in image
ikev2_profile_set_ts                                         | definition changed
ikev2_sa_details                                             | definition changed
ikev2_set_responder                                          | definition changed
ikev2_traffic_selector_details                               | definition changed
ip_mroute_add_del                                            | definition changed
ip_mroute_details                                            | definition changed
ipsec_sa_v2_details                                          | only in image
ipsec_sa_v2_dump                                             | only in image
ipsec_sad_entry_add_del_v2                                   | only in image
ipsec_sad_entry_add_del_v2_reply                             | only in image
nat44_plugin_enable_disable                                  | only in image
nat44_plugin_enable_disable_reply                            | only in image
nat64_get_timeouts                                           | only in image
nat64_get_timeouts_reply                                     | only in image
nat64_plugin_enable_disable                                  | only in image
nat64_plugin_enable_disable_reply                            | only in image
nat64_set_timeouts                                           | only in image
nat64_set_timeouts_reply                                     | only in image
pppoe_add_del_cp                                             | only in image
pppoe_add_del_cp_reply                                       | only in image
sw_vmxnet3_interface_details                                 | only in image
sw_vmxnet3_interface_dump                                    | only in image
trace_capture_packets                                        | only in image
trace_capture_packets_reply                                  | only in image
trace_clear_capture                                          | only in image
trace_clear_capture_reply                                    | only in image
trace_details                                                | definition changed
trace_set_filters                                            | only in image
trace_set_filters_reply                                      | only in image
vrrp_vr_event                                                | only in image
want_vrrp_vr_events                                          | only in image
want_vrrp_vr_events_reply                                    | only in image

Found 45 api message signature differences


### Newly deprecated API messages

These messages are still there in the API, but can and probably
will disappear in the next release.

- geneve_add_del_tunnel
- nat_show_config_2
- nat_show_config_2_reply
- nat_show_config_reply
- vmxnet3_dump

### In-progress API messages

These messages are provided for testing and experimentation only.
They are *not* subject to any compatibility process,
and therefore can arbitrarily change or disappear at *any* moment.
Also they may have less than satisfactory testing, making
them unsuitable for other use than the technology preview.
If you are intending to use these messages in production projects,
please collaborate with the feature maintainer on their productization.

- abf_itf_attach_add_del
- abf_itf_attach_add_del_reply
- abf_itf_attach_details
- abf_itf_attach_dump
- abf_plugin_get_version
- abf_plugin_get_version_reply
- abf_policy_add_del
- abf_policy_add_del_reply
- abf_policy_details
- abf_policy_dump
- adl_allowlist_enable_disable
- adl_allowlist_enable_disable_reply
- adl_interface_enable_disable
- adl_interface_enable_disable_reply
- af_xdp_create
- af_xdp_create_reply
- af_xdp_delete
- af_xdp_delete_reply
- cnat_add_del_snat_prefix
- cnat_add_del_snat_prefix_reply
- cnat_get_snat_addresses
- cnat_get_snat_addresses_reply
- cnat_session_details
- cnat_session_dump
- cnat_session_purge
- cnat_session_purge_reply
- cnat_set_snat_addresses
- cnat_set_snat_addresses_reply
- cnat_translation_del
- cnat_translation_del_reply
- cnat_translation_details
- cnat_translation_dump
- cnat_translation_update
- cnat_translation_update_reply
- crypto_sw_scheduler_set_worker
- crypto_sw_scheduler_set_worker_reply
- det44_get_timeouts_reply
- det44_interface_add_del_feature
- det44_interface_add_del_feature_reply
- det44_interface_details
- det44_interface_dump
- det44_plugin_enable_disable
- det44_plugin_enable_disable_reply
- det44_set_timeouts
- det44_set_timeouts_reply
- flow_add
- flow_add_reply
- flow_del
- flow_del_reply
- flow_disable
- flow_disable_reply
- flow_enable
- flow_enable_reply
- gbp_bridge_domain_add
- gbp_bridge_domain_add_reply
- gbp_bridge_domain_del
- gbp_bridge_domain_del_reply
- gbp_bridge_domain_details
- gbp_bridge_domain_dump
- gbp_bridge_domain_dump_reply
- gbp_contract_add_del
- gbp_contract_add_del_reply
- gbp_contract_details
- gbp_contract_dump
- gbp_endpoint_add
- gbp_endpoint_add_reply
- gbp_endpoint_del
- gbp_endpoint_del_reply
- gbp_endpoint_details
- gbp_endpoint_dump
- gbp_endpoint_group_add
- gbp_endpoint_group_add_reply
- gbp_endpoint_group_del
- gbp_endpoint_group_del_reply
- gbp_endpoint_group_details
- gbp_endpoint_group_dump
- gbp_ext_itf_add_del
- gbp_ext_itf_add_del_reply
- gbp_ext_itf_details
- gbp_ext_itf_dump
- gbp_recirc_add_del
- gbp_recirc_add_del_reply
- gbp_recirc_details
- gbp_recirc_dump
- gbp_route_domain_add
- gbp_route_domain_add_reply
- gbp_route_domain_del
- gbp_route_domain_del_reply
- gbp_route_domain_details
- gbp_route_domain_dump
- gbp_route_domain_dump_reply
- gbp_subnet_add_del
- gbp_subnet_add_del_reply
- gbp_subnet_details
- gbp_subnet_dump
- gbp_vxlan_tunnel_add
- gbp_vxlan_tunnel_add_reply
- gbp_vxlan_tunnel_del
- gbp_vxlan_tunnel_del_reply
- gbp_vxlan_tunnel_details
- gbp_vxlan_tunnel_dump
- ikev2_child_sa_details
- ikev2_child_sa_dump
- ikev2_initiate_del_child_sa
- ikev2_initiate_del_child_sa_reply
- ikev2_initiate_del_ike_sa
- ikev2_initiate_del_ike_sa_reply
- ikev2_initiate_rekey_child_sa
- ikev2_initiate_rekey_child_sa_reply
- ikev2_initiate_sa_init
- ikev2_initiate_sa_init_reply
- ikev2_nonce_get
- ikev2_nonce_get_reply
- ikev2_profile_add_del
- ikev2_profile_add_del_reply
- ikev2_profile_details
- ikev2_profile_disable_natt
- ikev2_profile_disable_natt_reply
- ikev2_profile_dump
- ikev2_profile_set_auth
- ikev2_profile_set_auth_reply
- ikev2_profile_set_id
- ikev2_profile_set_id_reply
- ikev2_profile_set_ipsec_udp_port
- ikev2_profile_set_ipsec_udp_port_reply
- ikev2_profile_set_liveness
- ikev2_profile_set_liveness_reply
- ikev2_profile_set_ts
- ikev2_profile_set_ts_reply
- ikev2_profile_set_udp_encap
- ikev2_profile_set_udp_encap_reply
- ikev2_sa_details
- ikev2_sa_dump
- ikev2_set_esp_transforms
- ikev2_set_esp_transforms_reply
- ikev2_set_ike_transforms
- ikev2_set_ike_transforms_reply
- ikev2_set_local_key
- ikev2_set_local_key_reply
- ikev2_set_responder
- ikev2_set_responder_reply
- ikev2_set_sa_lifetime
- ikev2_set_sa_lifetime_reply
- ikev2_set_tunnel_interface
- ikev2_set_tunnel_interface_reply
- ikev2_traffic_selector_details
- ikev2_traffic_selector_dump
- l2_emulation
- l2_emulation_reply
- mdata_enable_disable
- mdata_enable_disable_reply
- nat44_add_del_static_mapping_v2
- nat44_add_del_static_mapping_v2_reply
- nat64_plugin_enable_disable
- nat64_plugin_enable_disable_reply
- oddbuf_enable_disable
- oddbuf_enable_disable_reply
- pg_interface_enable_disable_coalesce
- pg_interface_enable_disable_coalesce_reply
- sample_macswap_enable_disable
- sample_macswap_enable_disable_reply
- sr_policies_with_sl_index_details
- sr_policies_with_sl_index_dump
- sw_interface_set_vxlan_gbp_bypass
- sw_interface_set_vxlan_gbp_bypass_reply
- trace_capture_packets
- trace_capture_packets_reply
- trace_clear_capture
- trace_clear_capture_reply
- trace_details
- trace_dump
- trace_dump_reply
- trace_set_filters
- trace_set_filters_reply
- vxlan_gbp_tunnel_add_del
- vxlan_gbp_tunnel_add_del_reply
- vxlan_gbp_tunnel_details
- vxlan_gbp_tunnel_dump
- wireguard_interface_create
- wireguard_interface_create_reply
- wireguard_interface_delete
- wireguard_interface_delete_reply
- wireguard_interface_details
- wireguard_interface_dump
- wireguard_peer_add
- wireguard_peer_add_reply
- wireguard_peer_remove
- wireguard_peer_remove_reply
- wireguard_peers_details
- wireguard_peers_dump

### Patches that changed API definitions

| @c src/vnet/ip/ip.api ||
| ------- | ------- |
| [990f69450](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=990f69450) | ip: convert u32 entry_flags to vl_api_mfib_entry_flags_t on mroute API |

| @c src/vnet/cop/cop.api ||
| ------- | ------- |
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/vnet/mfib/mfib_types.api ||
| ------- | ------- |
| [990f69450](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=990f69450) | ip: convert u32 entry_flags to vl_api_mfib_entry_flags_t on mroute API |

| @c src/vnet/devices/virtio/virtio.api ||
| ------- | ------- |
| [e347acbc3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e347acbc3) | virtio: add packet buffering on transmit path |
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/vnet/crypto/crypto.api ||
| ------- | ------- |
| [8c91b2ae2](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8c91b2ae2) | crypto: Crypto set handler API to support set all as CLI |

| @c src/vnet/ipsec/ipsec_types.api ||
| ------- | ------- |
| [041add7d1](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=041add7d1) | ipsec: Tunnel SA DSCP behaviour |

| @c src/vnet/ipsec/ipsec.api ||
| ------- | ------- |
| [041add7d1](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=041add7d1) | ipsec: Tunnel SA DSCP behaviour |
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/vnet/vxlan-gbp/vxlan_gbp.api ||
| ------- | ------- |
| [b468773aa](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b468773aa) | vxlan-gbp: Mark APIs as in-progress |

| @c src/plugins/ikev2/ikev2_types.api ||
| ------- | ------- |
| [d7fc12f07](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d7fc12f07) | ikev2: add option to disable NAT traversal |
| [84962d19b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=84962d19b) | ikev2: support ipv6 traffic selectors & overlay |

| @c src/plugins/ikev2/ikev2.api ||
| ------- | ------- |
| [d7fc12f07](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d7fc12f07) | ikev2: add option to disable NAT traversal |
| [84962d19b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=84962d19b) | ikev2: support ipv6 traffic selectors & overlay |

| @c src/plugins/nsim/nsim.api ||
| ------- | ------- |
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/plugins/l2tp/l2tp.api ||
| ------- | ------- |
| [6810a77da](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6810a77da) | misc: Move l2tp to plugin |

| @c src/plugins/lldp/lldp.api ||
| ------- | ------- |
| [3f9fdd984](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3f9fdd984) | lldp: Move to plugin |

| @c src/plugins/tracedump/tracedump.api ||
| ------- | ------- |
| [c0b195450](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c0b195450) | feature: Add packet trace API |

| @c src/plugins/tracedump/graph.api ||
| ------- | ------- |
| [c0b195450](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c0b195450) | feature: Add packet trace API |

| @c src/plugins/vrrp/vrrp.api ||
| ------- | ------- |
| [78f487e11](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=78f487e11) | vrrp: asynchronous events on VR state change |

| @c src/plugins/map/map.api ||
| ------- | ------- |
| [148c7b768](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=148c7b768) | stats: counters data model |
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/plugins/nat/nat64/nat64.api ||
| ------- | ------- |
| [1f36023d2](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=1f36023d2) | nat: move nat64 to a subfeature |

| @c src/plugins/nat/nat.api ||
| ------- | ------- |
| [5f4f2081c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5f4f2081c) | nat: nat44 enable/disable dynamic config |
| [1f36023d2](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=1f36023d2) | nat: move nat64 to a subfeature |

| @c src/plugins/nat/det44/det44.api ||
| ------- | ------- |
| [d1762e614](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d1762e614) | nat: det44 plugin fix style and api cleanup |
| [f916414b3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f916414b3) | api: clean up use of deprecated flag |

| @c src/plugins/vmxnet3/vmxnet3.api ||
| ------- | ------- |
| [490e077fb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=490e077fb) | vmxnet3: add sw_if_index filter to vmxnet3 interface dump |

| @c src/plugins/pppoe/pppoe.api ||
| ------- | ------- |
| [340b10a38](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=340b10a38) | pppoe: make pppoe plugin work with dot1q subinterfaces |

| @c src/plugins/lisp/lisp-gpe/lisp_gpe.api ||
| ------- | ------- |
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/lisp/lisp-cp/lisp_types.api ||
| ------- | ------- |
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/lisp/lisp-cp/one.api ||
| ------- | ------- |
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/lisp/lisp-cp/lisp.api ||
| ------- | ------- |
| [2b202bc4b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2b202bc4b) | lisp: Move to plugin |

| @c src/plugins/af_xdp/af_xdp.api ||
| ------- | ------- |
| [d4e109138](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d4e109138) | af_xdp: add option to claim all available rx queues |

| @c src/plugins/cnat/cnat.api ||
| ------- | ------- |
| [2082835fe](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2082835fe) | cnat: allow max_u16 translation backends |
| [af897c5e3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=af897c5e3) | cnat: Add DHCP support |

| @c src/plugins/geneve/geneve.api ||
| ------- | ------- |
| [3a6adc52f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3a6adc52f) | geneve: Move to plugin |


