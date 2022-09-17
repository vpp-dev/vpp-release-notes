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


@page release_notes_2210 Release notes for VPP 22.10

More than 194 commits since the previous release, including 110 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 22.10 release, generated as on Sat Sep 17 03:32:38 UTC 2022.

HIGHLIGHTS-PLACEHOLDER

## Features

- Plugins
  - DPDK
    - Enable interrupt support for vmxnet3 ([157e4f5d2](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=157e4f5d2))
    - Bump to 22.07 ([3c285b54a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3c285b54a))
  - Wireguard
    - Add processing of received cookie messages ([44ec846f4](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=44ec846f4))
    - Add dos mitigation support ([ce91af8ad](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ce91af8ad))
    - Add handshake rate limiting support ([a6328e51e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a6328e51e))
    - Add peers roaming support ([fee9853a4](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fee9853a4))
  - Performance counter
    - Enable perfmon plugin for Arm ([268d7be66](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=268d7be66))
    - Add Arm event bundles ([af82211d3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=af82211d3))
- Test Infrastructure
  - Add ipsec flow performance unit test ([422544363](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=422544363))
  - Add fast path ipv6 python tests for outbound policy matching ([651cc01b6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=651cc01b6))
- VNET
  - IP Neighbors
    - ARP and ND stats per-interface. ([fd2417b2a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fd2417b2a))
  - IPSec
    - Introduce spd fast path types ([d699a347c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d699a347c))
    - Add/delete ipsec fast path policy ([0464310fd](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0464310fd))
    - Add spd fast path matching ([e1dce3758](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e1dce3758))
    - Add fast path configuration parser ([4da8a63a9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4da8a63a9))
    - Show fast path flag in cli ([93bc431df](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=93bc431df))
    - Add fast path python tests ([ab0bf0c0c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ab0bf0c0c))
    - Fast path outbound policy matching implementation for ipv6 ([86f8208af](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=86f8208af))
    - Introduce fast path ipv4 inbound matching ([993b6bee6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=993b6bee6))
    - Make chacha20-poly1305 available via API ([d7c030d60](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d7c030d60))
  - Segment Routing (IPv6 and MPLS)
    - SRv6 TEF behavior support ([9cca694c8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9cca694c8))
    - Add support for SRv6 Path Tracing Infrastructure ([c933bb7e3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c933bb7e3))
    - SRv6 Path Tracing Sink node behavior ([d50e661d6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d50e661d6))
  - Session Layer
    - Support dma option ([0654242d1](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0654242d1))
- VPP Comms Library
  - Add hugepage for vcl configure and svm ([c795b8836](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c795b8836))
- Vector Library
  - Introduce DMA infrastructure ([abd566942](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=abd566942))

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
ipsec_spd_entry_add_del_v2                                   | only in image
ipsec_spd_entry_add_del_v2_reply                             | only in image

Found 2 api message signature differences


### Newly deprecated API messages

These messages are still there in the API, but can and probably
will disappear in the next release.

- ipsec_spd_entry_add_del

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
- acl_plugin_use_hash_lookup_get
- acl_plugin_use_hash_lookup_get_reply
- acl_plugin_use_hash_lookup_set
- acl_plugin_use_hash_lookup_set_reply
- adl_allowlist_enable_disable
- adl_allowlist_enable_disable_reply
- adl_interface_enable_disable
- adl_interface_enable_disable_reply
- cnat_get_snat_addresses
- cnat_get_snat_addresses_reply
- cnat_session_details
- cnat_session_dump
- cnat_session_purge
- cnat_session_purge_reply
- cnat_set_snat_addresses
- cnat_set_snat_addresses_reply
- cnat_set_snat_policy
- cnat_set_snat_policy_reply
- cnat_snat_policy_add_del_exclude_pfx
- cnat_snat_policy_add_del_exclude_pfx_reply
- cnat_snat_policy_add_del_if
- cnat_snat_policy_add_del_if_reply
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
- flow_add_v2
- flow_add_v2_reply
- flow_del
- flow_del_reply
- flow_disable
- flow_disable_reply
- flow_enable
- flow_enable_reply
- flowprobe_get_params
- flowprobe_get_params_reply
- flowprobe_interface_add_del
- flowprobe_interface_add_del_reply
- flowprobe_interface_details
- flowprobe_interface_dump
- flowprobe_set_params
- flowprobe_set_params_reply
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
- ikev2_set_responder_hostname
- ikev2_set_responder_hostname_reply
- ikev2_set_responder_reply
- ikev2_set_sa_lifetime
- ikev2_set_sa_lifetime_reply
- ikev2_set_tunnel_interface
- ikev2_set_tunnel_interface_reply
- ikev2_traffic_selector_details
- ikev2_traffic_selector_dump
- ip_route_add_del_v2
- ip_route_add_del_v2_reply
- ip_route_lookup_v2
- ip_route_lookup_v2_reply
- ip_route_v2_details
- ip_route_v2_dump
- l2_emulation
- l2_emulation_reply
- lcp_default_ns_get_reply
- lcp_default_ns_set
- lcp_default_ns_set_reply
- lcp_itf_pair_add_del
- lcp_itf_pair_add_del_reply
- lcp_itf_pair_add_del_v2
- lcp_itf_pair_details
- mdata_enable_disable
- mdata_enable_disable_reply
- nat44_ei_add_del_address_range
- nat44_ei_add_del_address_range_reply
- nat44_ei_add_del_static_mapping
- nat44_ei_add_del_static_mapping_reply
- nat44_ei_address_details
- nat44_ei_address_dump
- nat44_ei_del_session
- nat44_ei_del_session_reply
- nat44_ei_del_user
- nat44_ei_del_user_reply
- nat44_ei_forwarding_enable_disable
- nat44_ei_forwarding_enable_disable_reply
- nat44_ei_ha_flush
- nat44_ei_ha_flush_reply
- nat44_ei_ha_resync
- nat44_ei_ha_resync_completed_event
- nat44_ei_ha_resync_reply
- nat44_ei_ha_set_failover
- nat44_ei_ha_set_failover_reply
- nat44_ei_ha_set_listener
- nat44_ei_ha_set_listener_reply
- nat44_ei_interface_add_del_feature
- nat44_ei_interface_add_del_feature_reply
- nat44_ei_interface_details
- nat44_ei_interface_dump
- nat44_ei_ipfix_enable_disable
- nat44_ei_ipfix_enable_disable_reply
- nat44_ei_plugin_enable_disable
- nat44_ei_plugin_enable_disable_reply
- nat44_ei_set_addr_and_port_alloc_alg
- nat44_ei_set_addr_and_port_alloc_alg_reply
- nat44_ei_set_fq_options
- nat44_ei_set_fq_options_reply
- nat44_ei_set_mss_clamping
- nat44_ei_set_mss_clamping_reply
- nat44_ei_set_timeouts
- nat44_ei_set_timeouts_reply
- nat44_ei_set_workers
- nat44_ei_set_workers_reply
- nat44_ei_show_fq_options
- nat44_ei_show_fq_options_reply
- nat44_ei_show_running_config
- nat44_ei_show_running_config_reply
- nat44_ei_static_mapping_details
- nat44_ei_static_mapping_dump
- nat44_ei_user_details
- nat44_ei_user_dump
- nat44_ei_user_session_details
- nat44_ei_user_session_dump
- nat44_ei_worker_details
- nat44_ei_worker_dump
- nat64_plugin_enable_disable
- nat64_plugin_enable_disable_reply
- oddbuf_enable_disable
- oddbuf_enable_disable_reply
- pg_interface_enable_disable_coalesce
- pg_interface_enable_disable_coalesce_reply
- pnat_binding_add
- pnat_binding_add_reply
- pnat_binding_add_v2
- pnat_binding_add_v2_reply
- pnat_binding_attach
- pnat_binding_attach_reply
- pnat_binding_del
- pnat_binding_del_reply
- pnat_binding_detach
- pnat_binding_detach_reply
- pnat_bindings_details
- pnat_bindings_get
- pnat_bindings_get_reply
- pnat_interfaces_details
- pnat_interfaces_get
- pnat_interfaces_get_reply
- sample_macswap_enable_disable
- sample_macswap_enable_disable_reply
- sr_policies_with_sl_index_details
- sr_policies_with_sl_index_dump
- sw_interface_set_vxlan_gbp_bypass
- sw_interface_set_vxlan_gbp_bypass_reply
- test_addresses
- test_addresses2
- test_addresses2_reply
- test_addresses3
- test_addresses3_reply
- test_addresses_reply
- test_empty
- test_empty_reply
- test_enum
- test_enum_reply
- test_interface
- test_interface_reply
- test_prefix
- test_prefix_reply
- test_string
- test_string2
- test_string2_reply
- test_string_reply
- test_vla
- test_vla2
- test_vla2_reply
- test_vla3
- test_vla3_reply
- test_vla4
- test_vla4_reply
- test_vla5
- test_vla5_reply
- test_vla_reply
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
- want_wireguard_peer_events
- want_wireguard_peer_events_reply
- wg_set_async_mode
- wg_set_async_mode_reply
- wireguard_interface_create
- wireguard_interface_create_reply
- wireguard_interface_delete
- wireguard_interface_delete_reply
- wireguard_interface_details
- wireguard_interface_dump
- wireguard_peer_add
- wireguard_peer_add_reply
- wireguard_peer_event
- wireguard_peer_remove
- wireguard_peer_remove_reply
- wireguard_peers_details
- wireguard_peers_dump

### Patches that changed API definitions

| @c src/vnet/ipsec/ipsec.api ||
| ------- | ------- |
| [93688d734](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=93688d734) | ipsec: Use .api declared error counters |
| [815c6a4fb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=815c6a4fb) | ipsec: change wildcard value for any protocol of spd policy |

| @c src/vnet/ipsec/ipsec_types.api ||
| ------- | ------- |
| [d7c030d60](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d7c030d60) | ipsec: make chacha20-poly1305 available via API |
| [815c6a4fb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=815c6a4fb) | ipsec: change wildcard value for any protocol of spd policy |

| @c src/vnet/mpls/mpls.api ||
| ------- | ------- |
| [41a85c0a2](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=41a85c0a2) | mpls: Use the .api for the definition of error/info counters |

| @c src/vnet/arp/arp.api ||
| ------- | ------- |
| [13a74ae25](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=13a74ae25) | arp: Use the new style error count declaration |

| @c src/vnet/ip/ip.api ||
| ------- | ------- |
| [b29c60660](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b29c60660) | ip: Use .api declarative counters for ICMP. |
| [e22a70416](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e22a70416) | ip: Use .api declared error counters |

| @c src/vnet/ip-neighbor/ip_neighbor.api ||
| ------- | ------- |
| [6e4a56e65](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6e4a56e65) | ip-neighbor: Declarative .api counters. |

| @c src/vnet/bfd/bfd.api ||
| ------- | ------- |
| [5c7e579f7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5c7e579f7) | bfd: Express node stats using the .api file |

| @c src/plugins/linux-cp/lcp.api ||
| ------- | ------- |
| [3f245e687](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3f245e687) | linux-cp: change namespace to netns |
| [99e3b8b84](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=99e3b8b84) | linux-cp: API downgrade due to namespace keyword |


