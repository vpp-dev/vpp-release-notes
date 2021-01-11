@page release_notes_2106 Release notes for VPP 21.06

More than 62 commits since the previous release, including 24 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 21.06 release, generated as on Mon Jan 11 02:38:54 UTC 2021.

HIGHLIGHTS-PLACEHOLDER

## Features

- Plugins
  - DPDK
    - Rebase cryptodev engine for DPDK 20.11 ([25f371ee0](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=25f371ee0))
  - Performance counter
    - New perfmon plugin ([8b60fb0fe](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8b60fb0fe))
- SVM Library
  - Allow mq attachments at random offsets ([b46241889](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b46241889))
- VNET
  - IPIP
    - Support MPLS over IP ([e294de6f8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e294de6f8))
  - L2
    - Add per bridge domain learn limit ([5f93e3b7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5f93e3b7f))
    - Separating scan-delay and learn-limit into a separate API from want\_l2\_macs\_events ([0f8d10035](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0f8d10035))
  - Vhost User Driver
    - Add event index for interrupt notification to driver ([27ba5008a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=27ba5008a))

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
ipsec_tunnel_if_add_del                                      | only in file
ipsec_tunnel_if_add_del_reply                                | only in file
ipsec_tunnel_if_set_sa                                       | only in file
ipsec_tunnel_if_set_sa_reply                                 | only in file
l2fib_set_scan_delay                                         | only in image
l2fib_set_scan_delay_reply                                   | only in image
modify_vhost_user_if_v2                                      | only in image
modify_vhost_user_if_v2_reply                                | only in image
want_l2_macs_events2                                         | only in image
want_l2_macs_events2_reply                                   | only in image

Found 16 api message signature differences


### Newly deprecated API messages

These messages are still there in the API, but can and probably
will disappear in the next release.

- application_tls_cert_add
- application_tls_cert_add_reply
- application_tls_key_add
- application_tls_key_add_reply
- create_vhost_user_if
- create_vhost_user_if_reply
- modify_vhost_user_if
- modify_vhost_user_if_reply
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
- test_enum
- test_enum_reply
- test_prefix
- test_prefix_reply
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

| @c src/vnet/l2/l2.api ||
| ------- | ------- |
| [0f8d10035](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0f8d10035) | l2: Separating scan-delay and learn-limit into a separate API from want_l2_macs_events |
| [5f93e3b7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5f93e3b7f) | l2: add per bridge domain learn limit |

| @c src/vnet/ipsec/ipsec.api ||
| ------- | ------- |
| [a9e2774f5](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a9e2774f5) | ipsec: Deprecated the old IPsec Tunnel interface |
| [95f59f380](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=95f59f380) | ipsec: Mark the interface create reply deprecated |

| @c src/vnet/session/session.api ||
| ------- | ------- |
| [a5a9efd4d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a5a9efd4d) | vcl session: switch to generic cert key apis |

| @c src/vnet/devices/virtio/vhost_user.api ||
| ------- | ------- |
| [27ba5008a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=27ba5008a) | vhost: Add event index for interrupt notification to driver |


