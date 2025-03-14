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


@page release_notes_2506 Release notes for VPP 25.06

More than 103 commits since the previous release, including 40 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 25.06 release, generated as on Fri Mar 14 02:33:46 UTC 2025.

HIGHLIGHTS-PLACEHOLDER

## Features

- Plugins
  - HTTP
    - Hpack primitive types ([5985e8683](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5985e8683))
    - Hpack headers decoding ([58b6c4e6b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=58b6c4e6b))
    - Hpack headers encoding ([a013224b9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a013224b9))
    - Http2 frames ([86abfc3e0](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=86abfc3e0))
  - Host Stack Applications
    - Http client parallel sessions ([c8174f366](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c8174f366))
- VNET
  - IPSec
    - Add support for bypass and discard policies for ipv6 ([9ab79f54d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9ab79f54d))
    - Enable support for ipv6 udp ipsec encapsulation in policy mode ([0b04d71ce](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0b04d71ce))

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
http_static_enable_v4                                        | only in image
http_static_enable_v4_reply                                  | only in image

Found 2 api message signature differences


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
- bpf_trace_filter_set
- bpf_trace_filter_set_reply
- bpf_trace_filter_set_v2
- bpf_trace_filter_set_v2_reply
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
- det44_get_timeouts_reply
- det44_set_timeouts
- det44_set_timeouts_reply
- dev_attach
- dev_attach_reply
- dev_create_port_if
- dev_create_port_if_reply
- dev_detach
- dev_detach_reply
- dev_remove_port_if
- dev_remove_port_if_reply
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
- gtpu_add_del_forward
- gtpu_add_del_forward_reply
- gtpu_add_del_tunnel_v2
- gtpu_add_del_tunnel_v2_reply
- gtpu_get_transfer_counts
- gtpu_get_transfer_counts_reply
- gtpu_tunnel_v2_details
- gtpu_tunnel_v2_dump
- ikev2_child_sa_v2_details
- ikev2_child_sa_v2_dump
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
- ikev2_sa_v3_details
- ikev2_sa_v3_dump
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
- ip_neighbor_config_get
- ip_neighbor_config_get_reply
- ip_route_add_del_v2
- ip_route_add_del_v2_reply
- ip_route_lookup_v2
- ip_route_lookup_v2_reply
- ip_route_v2_details
- ip_route_v2_dump
- ip_session_redirect_add
- ip_session_redirect_add_reply
- ip_session_redirect_add_v2
- ip_session_redirect_add_v2_reply
- ip_session_redirect_del
- ip_session_redirect_del_reply
- l2_emulation
- l2_emulation_reply
- lcp_default_ns_get_reply
- lcp_default_ns_set
- lcp_default_ns_set_reply
- lcp_itf_pair_add_del_v2
- lcp_itf_pair_add_del_v2_reply
- lcp_itf_pair_add_del_v3
- lcp_itf_pair_add_del_v3_reply
- lcp_itf_pair_details
- lldp_details
- mdata_enable_disable
- mdata_enable_disable_reply
- nat44_ed_vrf_tables_v2_details
- nat44_ed_vrf_tables_v2_dump
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
- nat44_ei_user_session_v2_details
- nat44_ei_user_session_v2_dump
- nat44_ei_worker_details
- nat44_ei_worker_dump
- nat64_plugin_enable_disable
- nat64_plugin_enable_disable_reply
- npt66_binding_add_del
- npt66_binding_add_del_reply
- oddbuf_enable_disable
- oddbuf_enable_disable_reply
- pg_interface_enable_disable_coalesce
- pg_interface_enable_disable_coalesce_reply
- ping_finished_event
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
- pvti_interface_create
- pvti_interface_create_reply
- pvti_interface_delete
- pvti_interface_delete_reply
- pvti_interface_details
- pvti_interface_dump
- sample_macswap_enable_disable
- sample_macswap_enable_disable_reply
- set_ip_flow_hash_v3
- set_ip_flow_hash_v3_reply
- sflow_enable_disable
- sflow_enable_disable_reply
- sflow_header_bytes_get
- sflow_header_bytes_get_reply
- sflow_header_bytes_set
- sflow_header_bytes_set_reply
- sflow_interface_details
- sflow_interface_dump
- sflow_polling_interval_get
- sflow_polling_interval_get_reply
- sflow_polling_interval_set
- sflow_polling_interval_set_reply
- sflow_sampling_rate_get
- sflow_sampling_rate_get_reply
- sflow_sampling_rate_set
- sflow_sampling_rate_set_reply
- sr_localsids_with_packet_stats_details
- sr_localsids_with_packet_stats_dump
- sr_mobile_localsid_add_del
- sr_mobile_localsid_add_del_reply
- sr_mobile_policy_add
- sr_mobile_policy_add_reply
- sr_policies_with_sl_index_details
- sr_policies_with_sl_index_dump
- sr_policy_add_v2
- sr_policy_add_v2_reply
- sr_policy_mod_v2
- sr_policy_mod_v2_reply
- sw_interface_ip6nd_ra_details
- sw_interface_ip6nd_ra_dump
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
- trace_clear_cache
- trace_clear_cache_reply
- trace_clear_capture
- trace_clear_capture_reply
- trace_details
- trace_dump
- trace_dump_reply
- trace_filter_function_details
- trace_filter_function_dump
- trace_set_filter_function
- trace_set_filter_function_reply
- trace_set_filters
- trace_set_filters_reply
- trace_v2_details
- trace_v2_dump
- tracenode_enable_disable
- tracenode_enable_disable_reply
- vxlan_gbp_tunnel_add_del
- vxlan_gbp_tunnel_add_del_reply
- vxlan_gbp_tunnel_details
- vxlan_gbp_tunnel_dump
- want_ping_finished_events
- want_ping_finished_events_reply

### Patches that changed API definitions

| @c src/plugins/linux-cp/lcp.api ||
| ------- | ------- |
| [9543e2970](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9543e2970) | linux-cp: Add support for LACP packets |

| @c src/plugins/vxlan-gpe/vxlan_gpe.api ||
| ------- | ------- |
| [bb4858cdf](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=bb4858cdf) | vxlan: move vxlan-gpe to a plugin |

| @c src/plugins/http_static/http_static.api ||
| ------- | ------- |
| [5e94895df](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5e94895df) | http_static: introduce max-body-size parameter |


