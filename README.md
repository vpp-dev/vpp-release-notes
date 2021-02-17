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


@page release_notes_2106 Release notes for VPP 21.06

More than 280 commits since the previous release, including 119 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 21.06 release, generated as on Wed Feb 17 01:51:30 UTC 2021.

HIGHLIGHTS-PLACEHOLDER

## Features

- Binary API Compiler for Python
  - Support an 'autoendian' keyword for message definitions in .api files ([9302cfea9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9302cfea9))
- Build System
  - Make rpath optional ([2c91922eb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2c91922eb))
- Infrastructure Library
  - Add option to use libexecinfo ([67d7acd05](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=67d7acd05))
  - Add bihash with 32 byte key ([f613a4402](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f613a4402))
- Plugins
  - Crypto - ipsecmb
    - Add support for AES CTR ([fe7ff320b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fe7ff320b))
  - DPDK
    - Rebase cryptodev engine for DPDK 20.11 ([25f371ee0](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=25f371ee0))
    - Allow configure individual VMBUS devices ([982272974](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=982272974))
  - Internet Key Exchange (IKEv2) Protocol
    - Use new counters data model & add more counters ([fab5e7f39](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fab5e7f39))
    - Add per SA stats ([68d275356](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=68d275356))
  - NAT
    - 1:1 policy NAT ([18327be5d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=18327be5d))
  - QUIC protocol
    - Quicly v0.1.2 update ([2e4523816](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2e4523816))
  - Linux-cp
    - Linux Interface Mirroring for Control Plane Integration ([44db1caef](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=44db1caef))
  - Memif device driver
    - Adapt to new rxq framework ([755941865](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=755941865))
  - Performance counter
    - New perfmon plugin ([8b60fb0fe](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8b60fb0fe))
- Python binding for the VPP API
  - Expose vpp\_papi version to client ([b552ff2e9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b552ff2e9))
- SVM Library
  - Allow mq attachments at random offsets ([b46241889](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b46241889))
- VNET
  - IPIP
    - Support MPLS over IP ([e294de6f8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e294de6f8))
  - IPSec
    - Support MPLS over IPSec[46] interface ([4a58e49cf](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4a58e49cf))
    - Add support for AES CTR ([490b92738](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=490b92738))
    - CLI improvement for udp port encap ([048189e7a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=048189e7a))
    - Use the new tunnel API types to add flow label and TTL copy support ([c7eaa711f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7eaa711f))
    - Use the new tunnel API types to add flow label and TTL copy support ([9ec846c26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9ec846c26))
  - IPv4 LPM
    - Add API to retrieve IPv6 link-layer address ([58a1915b5](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=58a1915b5))
    - Router ID included in flow hash ([3d5f08a82](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3d5f08a82))
    - Path MTU ([8f5fef2c7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8f5fef2c7))
  - Interface Common
    - RX/TX direction type in API ([6a999d67d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6a999d67d))
    - Add promisc on/off in api ([fd0b399ff](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fd0b399ff))
  - L2
    - Add per bridge domain learn limit ([5f93e3b7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5f93e3b7f))
    - Separating scan-delay and learn-limit into a separate API from want\_l2\_macs\_events ([0f8d10035](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0f8d10035))
  - TLS and TLS engine plugins
    - Dtls initial implementation ([4b47ee26c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4b47ee26c))
  - Vhost User Driver
    - Add event index for interrupt notification to driver ([27ba5008a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=27ba5008a))
  - Tunnel
    - Support copying TTL and flow label from inner to outer ([a91cb4590](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a91cb4590))
- Libmemif
  - Set next free buffer ([47e68de22](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=47e68de22))
  - Set data offset for memif buffer ([1421748e3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=1421748e3))

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
bridge_domain_set_default_learn_limit                        | only in image
bridge_domain_set_default_learn_limit_reply                  | only in image
bridge_domain_set_learn_limit                                | only in image
bridge_domain_set_learn_limit_reply                          | only in image
create_vhost_user_if_v2                                      | only in image
create_vhost_user_if_v2_reply                                | only in image
ikev2_sa_details                                             | definition changed
ip_path_mtu_details                                          | only in image
ip_path_mtu_get                                              | only in image
ip_path_mtu_get_reply                                        | only in image
ip_path_mtu_replace_begin                                    | only in image
ip_path_mtu_replace_begin_reply                              | only in image
ip_path_mtu_replace_end                                      | only in image
ip_path_mtu_replace_end_reply                                | only in image
ip_path_mtu_update                                           | only in image
ip_path_mtu_update_reply                                     | only in image
ipsec_sa_v3_details                                          | only in image
ipsec_sa_v3_dump                                             | only in image
ipsec_sad_entry_add_del_v3                                   | only in image
ipsec_sad_entry_add_del_v3_reply                             | only in image
ipsec_tunnel_if_add_del                                      | only in file
ipsec_tunnel_if_add_del_reply                                | only in file
ipsec_tunnel_if_set_sa                                       | only in file
ipsec_tunnel_if_set_sa_reply                                 | only in file
l2fib_set_scan_delay                                         | only in image
l2fib_set_scan_delay_reply                                   | only in image
modify_vhost_user_if_v2                                      | only in image
modify_vhost_user_if_v2_reply                                | only in image
nat_set_fq_options                                           | only in image
nat_set_fq_options_reply                                     | only in image
nat_show_fq_options                                          | only in image
nat_show_fq_options_reply                                    | only in image
pnat_binding_add                                             | only in image
pnat_binding_add_reply                                       | only in image
pnat_binding_attach                                          | only in image
pnat_binding_attach_reply                                    | only in image
pnat_binding_del                                             | only in image
pnat_binding_del_reply                                       | only in image
pnat_binding_detach                                          | only in image
pnat_binding_detach_reply                                    | only in image
pnat_bindings_details                                        | only in image
pnat_bindings_get                                            | only in image
pnat_bindings_get_reply                                      | only in image
pnat_interfaces_details                                      | only in image
pnat_interfaces_get                                          | only in image
pnat_interfaces_get_reply                                    | only in image
policer_bind                                                 | only in image
policer_bind_reply                                           | only in image
set_ip_flow_hash_router_id                                   | only in image
set_ip_flow_hash_router_id_reply                             | only in image
set_ip_flow_hash_v2                                          | only in image
set_ip_flow_hash_v2_reply                                    | only in image
sw_interface_ip6_get_link_local_address                      | only in image
sw_interface_ip6_get_link_local_address_reply                | only in image
sw_interface_set_promisc                                     | only in image
sw_interface_set_promisc_reply                               | only in image
vxlan_add_del_tunnel_v2                                      | only in image
vxlan_add_del_tunnel_v2_reply                                | only in image
vxlan_tunnel_v2_details                                      | only in image
vxlan_tunnel_v2_dump                                         | only in image
want_l2_macs_events2                                         | only in image
want_l2_macs_events2_reply                                   | only in image

Found 62 api message signature differences


### Newly deprecated API messages

These messages are still there in the API, but can and probably
will disappear in the next release.

- application_tls_cert_add
- application_tls_cert_add_reply
- application_tls_key_add
- application_tls_key_add_reply
- create_vhost_user_if
- create_vhost_user_if_reply
- ipsec_sa_details
- ipsec_sa_dump
- ipsec_sad_entry_add_del
- ipsec_sad_entry_add_del_reply
- modify_vhost_user_if
- modify_vhost_user_if_reply
- set_ip_flow_hash
- set_ip_flow_hash_reply
- want_l2_macs_events
- want_l2_macs_events_reply

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
- nat44_show_running_config
- nat44_show_running_config_reply
- nat64_plugin_enable_disable
- nat64_plugin_enable_disable_reply
- nat_set_fq_options
- nat_set_fq_options_reply
- nat_show_fq_options
- nat_show_fq_options_reply
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
- test_addresses_reply
- test_enum
- test_enum_reply
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

| @c src/vnet/devices/virtio/vhost_user.api ||
| ------- | ------- |
| [27ba5008a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=27ba5008a) | vhost: Add event index for interrupt notification to driver |

| @c src/vnet/session/session.api ||
| ------- | ------- |
| [a5a9efd4d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a5a9efd4d) | vcl session: switch to generic cert key apis |

| @c src/vnet/l2/l2.api ||
| ------- | ------- |
| [0f8d10035](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0f8d10035) | l2: Separating scan-delay and learn-limit into a separate API from want_l2_macs_events |
| [5f93e3b7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5f93e3b7f) | l2: add per bridge domain learn limit |

| @c src/vnet/tunnel/tunnel_types.api ||
| ------- | ------- |
| [a91cb4590](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a91cb4590) | tunnel: support copying TTL and flow label from inner to outer |

| @c src/vnet/interface_types.api ||
| ------- | ------- |
| [6a999d67d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6a999d67d) | interface: RX/TX direction type in API |

| @c src/vnet/policer/policer_types.api ||
| ------- | ------- |
| [c5299ff30](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c5299ff30) | policer: remove SSE2 prefix |

| @c src/vnet/policer/policer.api ||
| ------- | ------- |
| [48e26367c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=48e26367c) | policer: add api to bind policer to worker |

| @c src/vnet/interface.api ||
| ------- | ------- |
| [fd0b399ff](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fd0b399ff) | interface: Add promisc on/off in api |

| @c src/vnet/ipsec/ipsec.api ||
| ------- | ------- |
| [9ec846c26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9ec846c26) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |
| [751bb131e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=751bb131e) | Revert "ipsec: Use the new tunnel API types to add flow label and TTL copy" |
| [c7eaa711f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7eaa711f) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |
| [a9e2774f5](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a9e2774f5) | ipsec: Deprecated the old IPsec Tunnel interface |
| [95f59f380](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=95f59f380) | ipsec: Mark the interface create reply deprecated |

| @c src/vnet/ipsec/ipsec_types.api ||
| ------- | ------- |
| [9ec846c26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9ec846c26) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |
| [751bb131e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=751bb131e) | Revert "ipsec: Use the new tunnel API types to add flow label and TTL copy" |
| [c7eaa711f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7eaa711f) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |

| @c src/vnet/ip/ip.api ||
| ------- | ------- |
| [8f5fef2c7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8f5fef2c7) | ip: Path MTU |
| [3d5f08a82](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3d5f08a82) | ip: Router ID included in flow hash |
| [f2984bbb0](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f2984bbb0) | ip: use IPv6 flowlabel in flow hash computation |
| [58a1915b5](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=58a1915b5) | ip: add API to retrieve IPv6 link-layer address |

| @c src/vnet/vxlan/vxlan.api ||
| ------- | ------- |
| [839dcc0fb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=839dcc0fb) | vxlan: add udp-port configuration support |

| @c src/plugins/map/map.api ||
| ------- | ------- |
| [9302cfea9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9302cfea9) | vppapigen: Support an 'autoendian' keyword for message definitions in .api files |

| @c src/plugins/linux-cp/lcp.api ||
| ------- | ------- |
| [44db1caef](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=44db1caef) | linux-cp: Linux Interface Mirroring for Control Plane Integration |

| @c src/plugins/nat/nat44.api ||
| ------- | ------- |
| [e345ee5cb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e345ee5cb) | nat: configurable handoff frame queue size |

| @c src/plugins/nat/pnat/pnat.api ||
| ------- | ------- |
| [18327be5d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=18327be5d) | nat: 1:1 policy NAT |

| @c src/plugins/ikev2/ikev2_types.api ||
| ------- | ------- |
| [68d275356](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=68d275356) | ikev2: add per SA stats |

| @c src/plugins/ikev2/ikev2.api ||
| ------- | ------- |
| [68d275356](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=68d275356) | ikev2: add per SA stats |
| [fab5e7f39](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fab5e7f39) | ikev2: use new counters data model & add more counters |

| @c src/vat2/test/vat2_test.api ||
| ------- | ------- |
| [316967cfa](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=316967cfa) | vppapigen: fix coverity issues in jsonconvert |
| [cf0102b3b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=cf0102b3b) | vppapigen: coverity issues in autogenerated code pass 3. |
| [fb0afab7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fb0afab7f) | vppapigen: fix fromjson coverity errors in generation |


