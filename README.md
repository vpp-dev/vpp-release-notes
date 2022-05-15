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


@page release_notes_2206 Release notes for VPP 22.06

More than 459 commits since the previous release, including 212 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 22.06 release, generated as on Sun May 15 02:57:27 UTC 2022.

HIGHLIGHTS-PLACEHOLDER

## Features

- Binary API Compiler for C and C++
  - Support api clients within VPP process ([2ca88ff97](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2ca88ff97))
- Build System
  - Make the build work on Debian 11 ([a47203128](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a47203128))
- Infrastructure Library
  - Add new bihash exports ([17ecd853e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=17ecd853e))
- Plugins
  - Crypto - ipsecmb
    - Bump to ipsecmb v1.2 ([c711bd08c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c711bd08c))
  - DPDK
    - Support devargs for vmbus ([502714fc4](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=502714fc4))
    - Bump to DPDK v22.03 ([2f132efc3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2f132efc3))
  - HTTP
    - Add http protocol plugin ([0b65621d4](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0b65621d4))
  - Host Stack Applications
    - Add http throughput test server app ([cfcc42e29](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=cfcc42e29))
    - Add support for SAPI in vpp\_echo ([d0d4b4337](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d0d4b4337))
  - Prom
    - Basic builtin prometheus stats exporter ([7285be2aa](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7285be2aa))
  - Flowprobe
    - Add support for reporting on inbound packets ([6f5ddf346](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6f5ddf346))
  - Linux-cp
    - Linux Control Plane Netlink Listener ([616447c39](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=616447c39))
  - Snort plugin
    - Feature support on interface output ([c454e8993](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c454e8993))
- VNET
  - Classifier
    - Add API to retrieve punt ACL tables ([7fc0ee7f6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7fc0ee7f6))
  - Device Drivers
    - Af-packet v3 support ([219cbcb29](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=219cbcb29))
    - Add multi-queue support for af-packet ([5a7aa51f0](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5a7aa51f0))
  - FLOW
    - Add generic flow pattern for 5G flow enhancement ([3a3668201](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3a3668201))
    - Enable RSS queue group action for 5G enhancement ([b95e6d4e7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b95e6d4e7))
  - IPSec
    - Support per next-header next-nodes ([98ca76ab8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=98ca76ab8))
  - Session Layer
    - Add infra for safe pool reallocs ([53d8d4fd6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=53d8d4fd6))
- VPP Comms Library
  - Make eventfd flag configurable from env ([794599bcc](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=794599bcc))
  - Add support for reconnect ([8ccc6b350](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8ccc6b350))
- Vector Library
  - Leave SIGCONT signal with its default handler ([8486283cd](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8486283cd))

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
bfd_udp_upd                                                  | only in image
bfd_udp_upd_reply                                            | only in image
flowprobe_interface_add_del                                  | only in image
flowprobe_interface_add_del_reply                            | only in image
ip_local_reass_enable_disable                                | only in image
ip_local_reass_enable_disable_reply                          | only in image
ip_local_reass_get                                           | only in image
ip_local_reass_get_reply                                     | only in image
memclnt_create_v2                                            | only in image
memclnt_create_v2_reply                                      | only in image
nat44_ed_add_del_vrf_route                                   | only in image
nat44_ed_add_del_vrf_route_reply                             | only in image
nat44_ed_add_del_vrf_table                                   | only in image
nat44_ed_add_del_vrf_table_reply                             | only in image
nat44_ed_vrf_tables_details                                  | only in image
nat44_ed_vrf_tables_dump                                     | only in image
nat44_forwarding_is_enabled                                  | only in file
nat44_forwarding_is_enabled_reply                            | only in file
nat44_interface_add_del_output_feature                       | only in file
nat44_interface_add_del_output_feature_reply                 | only in file
nat44_interface_output_feature_details                       | only in file
nat44_interface_output_feature_dump                          | only in file
nat44_plugin_enable_disable                                  | only in file
nat44_plugin_enable_disable_reply                            | only in file
nat44_session_cleanup                                        | only in file
nat44_session_cleanup_reply                                  | only in file
nat_control_ping                                             | only in file
nat_control_ping_reply                                       | only in file
nat_get_timeouts                                             | only in file
nat_get_timeouts_reply                                       | only in file
nat_set_log_level                                            | only in file
nat_set_log_level_reply                                      | only in file
nat_show_config_2                                            | only in file
nat_show_config_2_reply                                      | only in file
nat_show_config                                              | only in file
nat_show_config_reply                                        | only in file
pnat_binding_add                                             | definition changed
pnat_binding_add_v2                                          | only in image
pnat_binding_add_v2_reply                                    | only in image
pnat_bindings_details                                        | definition changed
pnat_interfaces_details                                      | definition changed
policer_output                                               | only in image
policer_output_reply                                         | only in image
punt_acl_get                                                 | only in image
punt_acl_get_reply                                           | only in image
vrrp_vr_del                                                  | only in image
vrrp_vr_del_reply                                            | only in image
vrrp_vr_update                                               | only in image
vrrp_vr_update_reply                                         | only in image
wg_set_async_mode                                            | only in image
wg_set_async_mode_reply                                      | only in image
wireguard_peer_add                                           | definition changed
wireguard_peers_details                                      | definition changed

Found 53 api message signature differences


### Newly deprecated API messages

These messages are still there in the API, but can and probably
will disappear in the next release.

- nat44_del_user
- nat44_del_user_reply
- nat_get_addr_and_port_alloc_alg
- nat_get_addr_and_port_alloc_alg_reply
- nat_ha_flush
- nat_ha_flush_reply
- nat_ha_get_failover
- nat_ha_get_failover_reply
- nat_ha_get_listener
- nat_ha_get_listener_reply
- nat_ha_resync
- nat_ha_resync_completed_event
- nat_ha_resync_reply
- nat_ha_set_failover
- nat_ha_set_failover_reply
- nat_ha_set_listener
- nat_ha_set_listener_reply
- nat_set_addr_and_port_alloc_alg
- nat_set_addr_and_port_alloc_alg_reply

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
- flow_del
- flow_del_reply
- flow_disable
- flow_disable_reply
- flow_enable
- flow_enable_reply
- flowprobe_interface_add_del
- flowprobe_interface_add_del_reply
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

| @c src/vnet/classify/classify.api ||
| ------- | ------- |
| [7fc0ee7f6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7fc0ee7f6) | classify: add API to retrieve punt ACL tables |

| @c src/vnet/ip/ip.api ||
| ------- | ------- |
| [01c1fa41f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=01c1fa41f) | ip: reassembly - add a way to disable for forus |

| @c src/vnet/policer/policer.api ||
| ------- | ------- |
| [e5a3ae017](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e5a3ae017) | policer: output interface policer |

| @c src/vnet/bfd/bfd.api ||
| ------- | ------- |
| [63f2c7d70](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=63f2c7d70) | bfd: Add an update API that has create new or modify existing semantics |

| @c src/vlibmemory/memclnt.api ||
| ------- | ------- |
| [2ca88ff97](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2ca88ff97) | vapi: support api clients within vpp process |

| @c src/plugins/nat/nat44-ed/nat44_ed.api ||
| ------- | ------- |
| [691c630b7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=691c630b7) | nat: VRF routing & FIB improvements |
| [b68108203](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b68108203) | nat: nat44-ed cleanup & fixes |

| @c src/plugins/nat/pnat/pnat.api ||
| ------- | ------- |
| [0891b6aa4](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0891b6aa4) | pnat: add support to wildcard IP Protocol field if not specified |

| @c src/plugins/flowprobe/flowprobe.api ||
| ------- | ------- |
| [6f5ddf346](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6f5ddf346) | flowprobe: add support for reporting on inbound packets |

| @c src/plugins/vrrp/vrrp.api ||
| ------- | ------- |
| [7539e4b55](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7539e4b55) | vrrp: add stats support and update API |

| @c src/plugins/wireguard/wireguard.api ||
| ------- | ------- |
| [39fdefdc9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=39fdefdc9) | wireguard: Document wireguard async mode default |
| [f47917959](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f47917959) | wireguard: improve peer dump details |
| [6a2c6a044](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6a2c6a044) | wireguard: improve sending WG interface dump details |
| [492d7790f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=492d7790f) | wireguard: add async mode for encryption packets |


