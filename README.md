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


@page release_notes_2202 Release notes for VPP 22.02

More than 369 commits since the previous release, including 170 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 22.02 release, generated as on Sun Dec  5 02:12:23 UTC 2021.

HIGHLIGHTS-PLACEHOLDER

## Features

- Infrastructure Library
  - Initial RISC-V support ([6eb0f84e3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6eb0f84e3))
- Sphinx Documents
  - Consume fd.io version list ([ae5609721](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ae5609721))
- VNET
  - Device Drivers
    - Add queues params in create\_if ([7d0e30bc6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7d0e30bc6))
  - IPSec
    - Record the number of packets lost from an SA ([e11203e5b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e11203e5b))
  - IPv4 LPM
    - Add classifier-based ACLs support on ip punt ([abb2a4223](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=abb2a4223))
  - Interface Common
    - Add multi tx-queues support for new tx infra ([0d05c0d21](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0d05c0d21))
  - Session Layer
    - Add session\_sapi\_enable\_disable ([7b3a3df26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7b3a3df26))
    - Add support for DSCP ([3ef8bf366](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3ef8bf366))
- VPP Comms Library
  - Add DSCP support in VCL ([2f09bfc8b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2f09bfc8b))
- Vector Library
  - Add virtual time support ([56eccdbaa](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=56eccdbaa))
- Gomemif
  - Add mode support ([176373cae](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=176373cae))

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
af_packet_create_v2                                          | only in image
af_packet_create_v2_reply                                    | only in image
af_xdp_create_v2                                             | only in image
af_xdp_create_v2_reply                                       | only in image
gbp_bridge_domain_add                                        | only in file
gbp_bridge_domain_add_reply                                  | only in file
gbp_bridge_domain_del                                        | only in file
gbp_bridge_domain_del_reply                                  | only in file
gbp_bridge_domain_details                                    | only in file
gbp_bridge_domain_dump                                       | only in file
gbp_bridge_domain_dump_reply                                 | only in file
gbp_contract_add_del                                         | only in file
gbp_contract_add_del_reply                                   | only in file
gbp_contract_details                                         | only in file
gbp_contract_dump                                            | only in file
gbp_endpoint_add                                             | only in file
gbp_endpoint_add_reply                                       | only in file
gbp_endpoint_del                                             | only in file
gbp_endpoint_del_reply                                       | only in file
gbp_endpoint_details                                         | only in file
gbp_endpoint_dump                                            | only in file
gbp_endpoint_group_add                                       | only in file
gbp_endpoint_group_add_reply                                 | only in file
gbp_endpoint_group_del                                       | only in file
gbp_endpoint_group_del_reply                                 | only in file
gbp_endpoint_group_details                                   | only in file
gbp_endpoint_group_dump                                      | only in file
gbp_ext_itf_add_del                                          | only in file
gbp_ext_itf_add_del_reply                                    | only in file
gbp_ext_itf_details                                          | only in file
gbp_ext_itf_dump                                             | only in file
gbp_recirc_add_del                                           | only in file
gbp_recirc_add_del_reply                                     | only in file
gbp_recirc_details                                           | only in file
gbp_recirc_dump                                              | only in file
gbp_route_domain_add                                         | only in file
gbp_route_domain_add_reply                                   | only in file
gbp_route_domain_del                                         | only in file
gbp_route_domain_del_reply                                   | only in file
gbp_route_domain_details                                     | only in file
gbp_route_domain_dump                                        | only in file
gbp_route_domain_dump_reply                                  | only in file
gbp_subnet_add_del                                           | only in file
gbp_subnet_add_del_reply                                     | only in file
gbp_subnet_details                                           | only in file
gbp_subnet_dump                                              | only in file
gbp_vxlan_tunnel_add                                         | only in file
gbp_vxlan_tunnel_add_reply                                   | only in file
gbp_vxlan_tunnel_del                                         | only in file
gbp_vxlan_tunnel_del_reply                                   | only in file
gbp_vxlan_tunnel_details                                     | only in file
gbp_vxlan_tunnel_dump                                        | only in file
ipfix_all_exporter_details                                   | only in image
ipfix_all_exporter_get                                       | only in image
ipfix_all_exporter_get_reply                                 | only in image
ipfix_exporter_create_delete                                 | only in image
ipfix_exporter_create_delete_reply                           | only in image
l2_emulation                                                 | only in file
l2_emulation_reply                                           | only in file
nat44_ed_add_del_output_interface                            | only in image
nat44_ed_add_del_output_interface_reply                      | only in image
nat44_ed_output_interface_details                            | only in image
nat44_ed_output_interface_get                                | only in image
nat44_ed_output_interface_get_reply                          | only in image
nat44_ei_add_del_output_interface                            | only in image
nat44_ei_add_del_output_interface_reply                      | only in image
nat44_ei_output_interface_details                            | only in image
nat44_ei_output_interface_get                                | only in image
nat44_ei_output_interface_get_reply                          | only in image
nat44_user_session_v2_details                                | only in image
nat44_user_session_v2_dump                                   | only in image
punt_acl_add_del                                             | only in image
punt_acl_add_del_reply                                       | only in image
session_sapi_enable_disable                                  | only in image
session_sapi_enable_disable_reply                            | only in image
sw_interface_set_tx_placement                                | only in image
sw_interface_set_tx_placement_reply                          | only in image
sw_interface_set_vxlan_gbp_bypass                            | only in file
sw_interface_set_vxlan_gbp_bypass_reply                      | only in file
sw_interface_tx_placement_details                            | only in image
sw_interface_tx_placement_get                                | only in image
sw_interface_tx_placement_get_reply                          | only in image
vxlan_gbp_tunnel_add_del                                     | only in file
vxlan_gbp_tunnel_add_del_reply                               | only in file
vxlan_gbp_tunnel_details                                     | only in file
vxlan_gbp_tunnel_dump                                        | only in file
vxlan_gpe_add_del_tunnel_v2                                  | only in image
vxlan_gpe_add_del_tunnel_v2_reply                            | only in image
vxlan_gpe_tunnel_v2_details                                  | only in image
vxlan_gpe_tunnel_v2_dump                                     | only in image
want_wireguard_peer_events                                   | only in image
want_wireguard_peer_events_reply                             | only in image
wireguard_peer_add                                           | definition changed
wireguard_peer_event                                         | only in image
wireguard_peers_details                                      | definition changed
wireguard_peers_dump                                         | definition changed

Found 96 api message signature differences


### Newly deprecated API messages

These messages are still there in the API, but can and probably
will disappear in the next release.

- nat44_interface_add_del_output_feature
- nat44_interface_add_del_output_feature_reply
- nat44_interface_output_feature_details
- nat44_interface_output_feature_dump

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
- af_xdp_create
- af_xdp_create_reply
- af_xdp_create_v2
- af_xdp_create_v2_reply
- af_xdp_delete
- af_xdp_delete_reply
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
- nat44_add_del_static_mapping_v2
- nat44_add_del_static_mapping_v2_reply
- nat44_ed_plugin_enable_disable
- nat44_ed_plugin_enable_disable_reply
- nat44_ed_set_fq_options
- nat44_ed_set_fq_options_reply
- nat44_ed_show_fq_options
- nat44_ed_show_fq_options_reply
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
- nat44_show_running_config
- nat44_show_running_config_reply
- nat44_user_session_v2_details
- nat44_user_session_v2_dump
- nat64_plugin_enable_disable
- nat64_plugin_enable_disable_reply
- oddbuf_enable_disable
- oddbuf_enable_disable_reply
- pg_interface_enable_disable_coalesce
- pg_interface_enable_disable_coalesce_reply
- pnat_binding_add
- pnat_binding_add_reply
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

| @c extras/deprecated/vnet/vxlan-gbp/vxlan_gbp.api ||
| ------- | ------- |
| [3be9164f8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3be9164f8) | misc: deprecate gbp and its dependents |

| @c extras/deprecated/plugins/l2e/l2e.api ||
| ------- | ------- |
| [3be9164f8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3be9164f8) | misc: deprecate gbp and its dependents |

| @c extras/deprecated/plugins/gbp/gbp.api ||
| ------- | ------- |
| [3be9164f8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3be9164f8) | misc: deprecate gbp and its dependents |

| @c src/vnet/fib/fib_types.api ||
| ------- | ------- |
| [da3310597](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=da3310597) | fib: doc nitfixes |

| @c src/vnet/qos/qos.api ||
| ------- | ------- |
| [2c77ae484](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2c77ae484) | docs: vnet comment nitfixes |

| @c src/vnet/interface.api ||
| ------- | ------- |
| [0d05c0d21](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0d05c0d21) | interface: add multi tx-queues support for new tx infra |

| @c src/vnet/session/session.api ||
| ------- | ------- |
| [7b3a3df26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7b3a3df26) | session: Add session_sapi_enable_disable |

| @c src/vnet/ipfix-export/ipfix_export.api ||
| ------- | ------- |
| [acb0d2d13](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=acb0d2d13) | ipfix-export: add a new API to dump all exporters |
| [d747dd950](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=d747dd950) | ipfix-export: support creating multiple exporters |

| @c src/vnet/devices/af_packet/af_packet.api ||
| ------- | ------- |
| [7d0e30bc6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7d0e30bc6) | devices: Add queues params in create_if |

| @c src/vnet/classify/classify.api ||
| ------- | ------- |
| [abb2a4223](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=abb2a4223) | ip: add classifier-based ACLs support on ip punt |

| @c src/vnet/vxlan-gpe/vxlan_gpe.api ||
| ------- | ------- |
| [ea9629298](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ea9629298) | vxlan-gpe: add udp-port configuration support |

| @c src/plugins/wireguard/wireguard.api ||
| ------- | ------- |
| [064b77c74](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=064b77c74) | build: remove unnecessary executable bits |
| [dd630d15d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=dd630d15d) | wireguard: add events for peer |

| @c src/plugins/af_xdp/af_xdp.api ||
| ------- | ------- |
| [57bdb26ba](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=57bdb26ba) | af_xdp: introduce to netns api |

| @c src/plugins/nat/nat44-ei/nat44_ei.api ||
| ------- | ------- |
| [1953da661](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=1953da661) | nat: nat44-ei configuration improvements |

| @c src/plugins/nat/nat44-ed/nat44_ed.api ||
| ------- | ------- |
| [4189108e1](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4189108e1) | nat: NAT44 ED api fix and improvement |
| [c7164827a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7164827a) | nat: nat44-ed add session timing out indicator in api (2) |

| @c src/vlibmemory/memclnt.api ||
| ------- | ------- |
| [f0e67d78a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f0e67d78a) | interface: add api test file |
| [36217e3ca](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=36217e3ca) | api: API trace improvements |

| @c src/vlibmemory/vlib.api ||
| ------- | ------- |
| [f0e67d78a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f0e67d78a) | interface: add api test file |
| [a1400cecb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a1400cecb) | misc: api move continued |
| [248210c6c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=248210c6c) | misc: move part of vpe apis to vlibmemory |

| @c src/vpp/api/vpe.api ||
| ------- | ------- |
| [a1400cecb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a1400cecb) | misc: api move continued |
| [248210c6c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=248210c6c) | misc: move part of vpe apis to vlibmemory |


