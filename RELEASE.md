@page release_notes_2106 Release notes for VPP 21.06

More than 787 commits since the previous release, including 364 fixes.

## Release Highlights

These are the *DRAFT* release notes for the upcoming VPP 21.06 release, generated as on Wed May 26 03:05:31 UTC 2021.

HIGHLIGHTS-PLACEHOLDER

## Features

- Binary API Compiler for Python
  - Support an 'autoendian' keyword for message definitions in .api files ([9302cfea9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9302cfea9))
- Build System
  - Make rpath optional ([2c91922eb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2c91922eb))
- Infrastructure Library
  - Add option to use libexecinfo ([67d7acd05](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=67d7acd05))
  - Add bihash with 32 byte key ([f613a4402](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f613a4402))
  - Add missing %o ([04a14133c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=04a14133c))
- Plugins
  - ARPing CLI
    - Add arping command ([a77ae4708](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a77ae4708))
  - AVF Device driver
    - Add avf flow framework ([ffe9a5489](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ffe9a5489))
  - CNat
    - Add maglev support ([4d237874e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4d237874e))
    - Add input feature node ([cc9a1a0d3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=cc9a1a0d3))
    - Add calico/k8s src policy ([516b0adf6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=516b0adf6))
  - Crypto - ipsecmb
    - Add support for AES CTR ([fe7ff320b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fe7ff320b))
  - DPDK
    - Rebase cryptodev engine for DPDK 20.11 ([25f371ee0](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=25f371ee0))
    - Allow configure individual VMBUS devices ([982272974](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=982272974))
    - Implement interrupt mode ([19ff0c369](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=19ff0c369))
  - IPv6 Segment Routing Flow-Based Dynamic Proxy
    - SRv6 Per-Flow Dynamic Proxy ([ed7c62a30](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ed7c62a30))
  - Internet Key Exchange (IKEv2) Protocol
    - Use new counters data model & add more counters ([fab5e7f39](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fab5e7f39))
    - Add per SA stats ([68d275356](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=68d275356))
    - Support responder hostname ([af2cc6425](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=af2cc6425))
  - NAT
    - 1:1 policy NAT ([18327be5d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=18327be5d))
    - Pnat copy and clear byte instructions ([ab3151c52](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ab3151c52))
  - QUIC protocol
    - Quicly v0.1.2 update ([2e4523816](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=2e4523816))
    - Update quicly to v0.1.3 ([db36fda74](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=db36fda74))
  - RDMA (ibverb) driver
    - Add support for RSS configuration ([f5a45680e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f5a45680e))
  - SRTP
    - Basic implementation based on libsrtp2 ([6621abf49](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6621abf49))
  - TCP MSS Clamping
    - TCP MSS clamping plugin ([bf55e9931](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=bf55e9931))
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
  - Per app rx message queues ([41d5f541d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=41d5f541d))
- Statistics Segment
  - Adding symlinks for nodes and interfaces in the stat segment ([db0238090](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=db0238090))
  - Memory heap counters ([a606d9210](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a606d9210))
- VNET
  - Crypto Infra
    - Add support for aes-ctr+sha-1 chains ([40ee2003b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=40ee2003b))
    - Support hashing operations ([06111a837](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=06111a837))
    - Add chacha20-poly1305 support to ipsecmb ([106e24bd9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=106e24bd9))
  - FIB
    - Allow the creation of new source on the API ([976b259be](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=976b259be))
  - FLOW
    - Add API implementation of IP4/IP6, IP4\_VXLAN/IP6\_VXLAN ([c7e7819ad](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7e7819ad))
  - IPIP
    - Support MPLS over IP ([e294de6f8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e294de6f8))
  - IPSec
    - Support MPLS over IPSec[46] interface ([4a58e49cf](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4a58e49cf))
    - Add support for AES CTR ([490b92738](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=490b92738))
    - CLI improvement for udp port encap ([048189e7a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=048189e7a))
    - Use the new tunnel API types to add flow label and TTL copy support ([c7eaa711f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7eaa711f))
    - Use the new tunnel API types to add flow label and TTL copy support ([9ec846c26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9ec846c26))
    - Support async mode per-SA ([f16e9a550](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f16e9a550))
  - IPv4 LPM
    - Add API to retrieve IPv6 link-layer address ([58a1915b5](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=58a1915b5))
    - Router ID included in flow hash ([3d5f08a82](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3d5f08a82))
    - Path MTU ([8f5fef2c7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8f5fef2c7))
    - Extend punt CLI for exception packets ([45723b8d3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=45723b8d3))
    - Extend show cmd of ip reassembly configuration ([74a4a70ef](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=74a4a70ef))
  - Interface Common
    - RX/TX direction type in API ([6a999d67d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6a999d67d))
    - Add promisc on/off in api ([fd0b399ff](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fd0b399ff))
  - L2
    - Add per bridge domain learn limit ([5f93e3b7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5f93e3b7f))
    - Separating scan-delay and learn-limit into a separate API from want\_l2\_macs\_events ([0f8d10035](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0f8d10035))
  - Session Layer
    - Basic support for interrupt mode ([7da8829d8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=7da8829d8))
    - Api to update connection attributes ([04ae8273f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=04ae8273f))
  - TLS and TLS engine plugins
    - Dtls initial implementation ([4b47ee26c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4b47ee26c))
  - Vhost User Driver
    - Add event index for interrupt notification to driver ([27ba5008a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=27ba5008a))
  - Tunnel
    - Support copying TTL and flow label from inner to outer ([a91cb4590](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a91cb4590))
- VPP Comms Library
  - Extended connect/listen configuration ([4ac258497](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4ac258497))
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
abf_policy_add_del                                           | message CRC32 fix
abf_policy_details                                           | message CRC32 fix
acl_add_replace                                              | message CRC32 fix
acl_details                                                  | message CRC32 fix
af_xdp_create                                                | definition changed
arping                                                       | only in image
arping_reply                                                 | only in image
bd_ip_mac_add_del                                            | message CRC32 fix
bd_ip_mac_details                                            | message CRC32 fix
bfd_udp_add                                                  | message CRC32 fix
bfd_udp_auth_activate                                        | message CRC32 fix
bfd_udp_auth_deactivate                                      | message CRC32 fix
bfd_udp_del                                                  | message CRC32 fix
bfd_udp_get_echo_source_reply                                | message CRC32 fix
bfd_udp_mod                                                  | message CRC32 fix
bfd_udp_session_details                                      | message CRC32 fix
bfd_udp_session_event                                        | only in image
bfd_udp_session_set_flags                                    | message CRC32 fix
bier_disp_entry_add_del                                      | message CRC32 fix
bier_disp_entry_details                                      | message CRC32 fix
bier_route_add_del                                           | message CRC32 fix
bier_route_details                                           | message CRC32 fix
bond_create                                                  | message CRC32 fix
bond_enslave                                                 | message CRC32 fix
bridge_domain_details                                        | message CRC32 fix
bridge_domain_set_default_learn_limit                        | only in image
bridge_domain_set_default_learn_limit_reply                  | only in image
bridge_domain_set_learn_limit                                | only in image
bridge_domain_set_learn_limit_reply                          | only in image
cnat_add_del_snat_prefix                                     | only in file
cnat_add_del_snat_prefix_reply                               | only in file
cnat_session_details                                         | definition changed
cnat_set_snat_policy                                         | only in image
cnat_set_snat_policy_reply                                   | only in image
cnat_snat_policy_add_del_exclude_pfx                         | only in image
cnat_snat_policy_add_del_exclude_pfx_reply                   | only in image
cnat_snat_policy_add_del_if                                  | only in image
cnat_snat_policy_add_del_if_reply                            | only in image
cnat_translation_details                                     | definition changed
cnat_translation_update                                      | definition changed
cop_interface_enable_disable                                 | only in file
cop_interface_enable_disable_reply                           | only in file
cop_whitelist_enable_disable                                 | only in file
cop_whitelist_enable_disable_reply                           | only in file
create_subif                                                 | message CRC32 fix
create_vhost_user_if_v2                                      | only in image
create_vhost_user_if_v2_reply                                | only in image
dhcp6_pd_reply_event                                         | message CRC32 fix
dhcp6_pd_send_client_message                                 | message CRC32 fix
dhcp6_reply_event                                            | message CRC32 fix
dhcp6_send_client_message                                    | message CRC32 fix
dhcp_client_config                                           | message CRC32 fix
dhcp_client_details                                          | message CRC32 fix
dhcp_compl_event                                             | message CRC32 fix
dhcp_proxy_config                                            | message CRC32 fix
dhcp_proxy_details                                           | message CRC32 fix
dslite_add_del_pool_addr_range                               | message CRC32 fix
dslite_get_aftr_addr_reply                                   | message CRC32 fix
dslite_get_b4_addr_reply                                     | message CRC32 fix
dslite_set_aftr_addr                                         | message CRC32 fix
dslite_set_b4_addr                                           | message CRC32 fix
fib_source_add                                               | only in image
fib_source_add_reply                                         | only in image
fib_source_details                                           | only in image
fib_source_dump                                              | only in image
flow_add                                                     | definition changed
gbp_bridge_domain_add                                        | message CRC32 fix
gbp_bridge_domain_details                                    | message CRC32 fix
gbp_contract_add_del                                         | message CRC32 fix
gbp_contract_details                                         | message CRC32 fix
gbp_endpoint_add                                             | message CRC32 fix
gbp_endpoint_details                                         | message CRC32 fix
gbp_endpoint_group_add                                       | message CRC32 fix
gbp_endpoint_group_details                                   | message CRC32 fix
gbp_ext_itf_add_del                                          | message CRC32 fix
gbp_ext_itf_details                                          | message CRC32 fix
gbp_route_domain_add                                         | message CRC32 fix
gbp_route_domain_details                                     | message CRC32 fix
gbp_subnet_add_del                                           | message CRC32 fix
gbp_subnet_details                                           | message CRC32 fix
geneve_add_del_tunnel                                        | message CRC32 fix
geneve_tunnel_details                                        | message CRC32 fix
gpe_add_del_fwd_entry                                        | message CRC32 fix
gpe_add_del_native_fwd_rpath                                 | message CRC32 fix
gpe_fwd_entries_get_reply                                    | message CRC32 fix
gpe_fwd_entry_path_details                                   | message CRC32 fix
gpe_native_fwd_rpaths_get_reply                              | message CRC32 fix
gre_tunnel_add_del                                           | message CRC32 fix
gre_tunnel_details                                           | message CRC32 fix
gtpu_add_del_tunnel                                          | message CRC32 fix
gtpu_tunnel_details                                          | message CRC32 fix
gtpu_tunnel_update_tteid                                     | message CRC32 fix
igmp_details                                                 | message CRC32 fix
igmp_event                                                   | message CRC32 fix
igmp_group_prefix_details                                    | message CRC32 fix
igmp_group_prefix_set                                        | message CRC32 fix
igmp_listen                                                  | message CRC32 fix
ikev2_sa_details                                             | definition changed
ikev2_set_responder_hostname                                 | only in image
ikev2_set_responder_hostname_reply                           | only in image
ioam_export_ip6_enable_disable                               | message CRC32 fix
ip6_add_del_address_using_prefix                             | message CRC32 fix
ip6_ra_event                                                 | message CRC32 fix
ip6nd_proxy_add_del                                          | message CRC32 fix
ip6nd_proxy_details                                          | message CRC32 fix
ip_address_details                                           | message CRC32 fix
ip_container_proxy_add_del                                   | message CRC32 fix
ip_container_proxy_details                                   | message CRC32 fix
ip_neighbor_add_del                                          | message CRC32 fix
ip_neighbor_details                                          | message CRC32 fix
ip_neighbor_dump                                             | message CRC32 fix
ip_neighbor_event                                            | message CRC32 fix
ip_path_mtu_details                                          | only in image
ip_path_mtu_get                                              | only in image
ip_path_mtu_get_reply                                        | only in image
ip_path_mtu_replace_begin                                    | only in image
ip_path_mtu_replace_begin_reply                              | only in image
ip_path_mtu_replace_end                                      | only in image
ip_path_mtu_replace_end_reply                                | only in image
ip_path_mtu_update                                           | only in image
ip_path_mtu_update_reply                                     | only in image
ip_punt_redirect                                             | message CRC32 fix
ip_punt_redirect_details                                     | message CRC32 fix
ip_reassembly_enable_disable                                 | message CRC32 fix
ip_route_add_del                                             | message CRC32 fix
ip_route_add_del_v2                                          | only in image
ip_route_add_del_v2_reply                                    | only in image
ip_route_details                                             | message CRC32 fix
ip_route_lookup                                              | message CRC32 fix
ip_route_lookup_reply                                        | message CRC32 fix
ip_route_lookup_v2                                           | only in image
ip_route_lookup_v2_reply                                     | only in image
ip_route_v2_details                                          | only in image
ip_route_v2_dump                                             | only in image
ip_source_and_port_range_check_add_del                       | message CRC32 fix
ip_unnumbered_details                                        | message CRC32 fix
ipfix_exporter_details                                       | message CRC32 fix
ipip_6rd_add_tunnel                                          | message CRC32 fix
ipip_add_tunnel                                              | message CRC32 fix
ipip_tunnel_details                                          | message CRC32 fix
ipsec_sa_details                                             | message CRC32 fix
ipsec_sa_v3_details                                          | only in image
ipsec_sa_v3_dump                                             | only in image
ipsec_sad_entry_add_del                                      | message CRC32 fix
ipsec_sad_entry_add_del_v3                                   | only in image
ipsec_sad_entry_add_del_v3_reply                             | only in image
ipsec_spd_details                                            | message CRC32 fix
ipsec_spd_entry_add_del                                      | message CRC32 fix
ipsec_tunnel_if_add_del                                      | only in file
ipsec_tunnel_if_add_del_reply                                | only in file
ipsec_tunnel_if_set_sa                                       | only in file
ipsec_tunnel_if_set_sa_reply                                 | only in file
ipsec_tunnel_protect_del                                     | message CRC32 fix
ipsec_tunnel_protect_details                                 | message CRC32 fix
ipsec_tunnel_protect_update                                  | message CRC32 fix
l2_arp_term_event                                            | message CRC32 fix
l2_fib_table_details                                         | message CRC32 fix
l2_interface_pbb_tag_rewrite                                 | message CRC32 fix
l2_macs_event                                                | message CRC32 fix
l2_patch_add_del                                             | message CRC32 fix
l2_xconnect_details                                          | message CRC32 fix
l2fib_add_del                                                | message CRC32 fix
l2fib_set_scan_delay                                         | only in image
l2fib_set_scan_delay_reply                                   | only in image
l2tpv3_create_tunnel                                         | message CRC32 fix
l3xc_details                                                 | message CRC32 fix
l3xc_update                                                  | message CRC32 fix
lb_add_del_as                                                | message CRC32 fix
lb_add_del_vip                                               | message CRC32 fix
lb_as_details                                                | message CRC32 fix
lb_conf                                                      | message CRC32 fix
lb_vip_details                                               | message CRC32 fix
lb_vip_dump                                                  | message CRC32 fix
lisp_add_del_adjacency                                       | message CRC32 fix
lisp_add_del_local_eid                                       | message CRC32 fix
lisp_add_del_map_resolver                                    | message CRC32 fix
lisp_add_del_map_server                                      | message CRC32 fix
lisp_add_del_remote_mapping                                  | message CRC32 fix
lisp_adjacencies_get_reply                                   | message CRC32 fix
lisp_eid_table_details                                       | message CRC32 fix
lisp_eid_table_dump                                          | message CRC32 fix
lisp_locator_details                                         | message CRC32 fix
lisp_map_resolver_details                                    | message CRC32 fix
lisp_map_server_details                                      | message CRC32 fix
lisp_use_petr                                                | message CRC32 fix
log_details                                                  | message CRC32 fix
macip_acl_add                                                | message CRC32 fix
macip_acl_add_replace                                        | message CRC32 fix
macip_acl_details                                            | message CRC32 fix
mactime_add_del_range                                        | message CRC32 fix
mactime_details                                              | message CRC32 fix
map_add_domain                                               | message CRC32 fix
map_domain_details                                           | message CRC32 fix
map_param_add_del_pre_resolve                                | message CRC32 fix
map_param_get_reply                                          | message CRC32 fix
memif_details                                                | message CRC32 fix
mfib_signal_details                                          | message CRC32 fix
modify_vhost_user_if_v2                                      | only in image
modify_vhost_user_if_v2_reply                                | only in image
mpls_ip_bind_unbind                                          | message CRC32 fix
mpls_route_add_del                                           | message CRC32 fix
mpls_route_details                                           | message CRC32 fix
mpls_tunnel_add_del                                          | message CRC32 fix
mpls_tunnel_details                                          | message CRC32 fix
mss_clamp_details                                            | only in image
mss_clamp_enable_disable                                     | only in image
mss_clamp_enable_disable_reply                               | only in image
mss_clamp_get                                                | only in image
mss_clamp_get_reply                                          | only in image
nat44_add_del_address_range                                  | message CRC32 fix
nat44_add_del_identity_mapping                               | message CRC32 fix
nat44_add_del_interface_addr                                 | message CRC32 fix
nat44_add_del_lb_static_mapping                              | message CRC32 fix
nat44_add_del_static_mapping                                 | message CRC32 fix
nat44_address_details                                        | message CRC32 fix
nat44_del_session                                            | message CRC32 fix
nat44_ed_plugin_enable_disable                               | only in image
nat44_ed_plugin_enable_disable_reply                         | only in image
nat44_ed_set_fq_options                                      | only in image
nat44_ed_set_fq_options_reply                                | only in image
nat44_ed_show_fq_options                                     | only in image
nat44_ed_show_fq_options_reply                               | only in image
nat44_ei_add_del_address_range                               | only in image
nat44_ei_add_del_address_range_reply                         | only in image
nat44_ei_add_del_identity_mapping                            | only in image
nat44_ei_add_del_identity_mapping_reply                      | only in image
nat44_ei_add_del_interface_addr                              | only in image
nat44_ei_add_del_interface_addr_reply                        | only in image
nat44_ei_add_del_static_mapping                              | only in image
nat44_ei_add_del_static_mapping_reply                        | only in image
nat44_ei_address_details                                     | only in image
nat44_ei_address_dump                                        | only in image
nat44_ei_del_session                                         | only in image
nat44_ei_del_session_reply                                   | only in image
nat44_ei_del_user                                            | only in image
nat44_ei_del_user_reply                                      | only in image
nat44_ei_forwarding_enable_disable                           | only in image
nat44_ei_forwarding_enable_disable_reply                     | only in image
nat44_ei_get_addr_and_port_alloc_alg                         | only in image
nat44_ei_get_addr_and_port_alloc_alg_reply                   | only in image
nat44_ei_get_mss_clamping                                    | only in image
nat44_ei_get_mss_clamping_reply                              | only in image
nat44_ei_ha_flush                                            | only in image
nat44_ei_ha_flush_reply                                      | only in image
nat44_ei_ha_get_failover                                     | only in image
nat44_ei_ha_get_failover_reply                               | only in image
nat44_ei_ha_get_listener                                     | only in image
nat44_ei_ha_get_listener_reply                               | only in image
nat44_ei_ha_resync                                           | only in image
nat44_ei_ha_resync_completed_event                           | only in image
nat44_ei_ha_resync_reply                                     | only in image
nat44_ei_ha_set_failover                                     | only in image
nat44_ei_ha_set_failover_reply                               | only in image
nat44_ei_ha_set_listener                                     | only in image
nat44_ei_ha_set_listener_reply                               | only in image
nat44_ei_identity_mapping_details                            | only in image
nat44_ei_identity_mapping_dump                               | only in image
nat44_ei_interface_add_del_feature                           | only in image
nat44_ei_interface_add_del_feature_reply                     | only in image
nat44_ei_interface_add_del_output_feature                    | only in image
nat44_ei_interface_add_del_output_feature_reply              | only in image
nat44_ei_interface_addr_details                              | only in image
nat44_ei_interface_addr_dump                                 | only in image
nat44_ei_interface_details                                   | only in image
nat44_ei_interface_dump                                      | only in image
nat44_ei_interface_output_feature_details                    | only in image
nat44_ei_interface_output_feature_dump                       | only in image
nat44_ei_ipfix_enable_disable                                | only in image
nat44_ei_ipfix_enable_disable_reply                          | only in image
nat44_ei_plugin_enable_disable                               | only in image
nat44_ei_plugin_enable_disable_reply                         | only in image
nat44_ei_set_addr_and_port_alloc_alg                         | only in image
nat44_ei_set_addr_and_port_alloc_alg_reply                   | only in image
nat44_ei_set_fq_options                                      | only in image
nat44_ei_set_fq_options_reply                                | only in image
nat44_ei_set_log_level                                       | only in image
nat44_ei_set_log_level_reply                                 | only in image
nat44_ei_set_mss_clamping                                    | only in image
nat44_ei_set_mss_clamping_reply                              | only in image
nat44_ei_set_timeouts                                        | only in image
nat44_ei_set_timeouts_reply                                  | only in image
nat44_ei_set_workers                                         | only in image
nat44_ei_set_workers_reply                                   | only in image
nat44_ei_show_fq_options                                     | only in image
nat44_ei_show_fq_options_reply                               | only in image
nat44_ei_show_running_config                                 | only in image
nat44_ei_show_running_config_reply                           | only in image
nat44_ei_static_mapping_details                              | only in image
nat44_ei_static_mapping_dump                                 | only in image
nat44_ei_user_details                                        | only in image
nat44_ei_user_dump                                           | only in image
nat44_ei_user_session_details                                | only in image
nat44_ei_user_session_dump                                   | only in image
nat44_ei_worker_details                                      | only in image
nat44_ei_worker_dump                                         | only in image
nat44_identity_mapping_details                               | message CRC32 fix
nat44_interface_addr_details                                 | message CRC32 fix
nat44_lb_static_mapping_add_del_local                        | message CRC32 fix
nat44_lb_static_mapping_details                              | message CRC32 fix
nat44_static_mapping_details                                 | message CRC32 fix
nat44_user_session_details                                   | message CRC32 fix
nat64_add_del_pool_addr_range                                | message CRC32 fix
nat64_add_del_static_bib                                     | message CRC32 fix
nat64_bib_details                                            | message CRC32 fix
nat64_st_details                                             | message CRC32 fix
nat66_add_del_static_mapping                                 | message CRC32 fix
nat66_plugin_enable_disable                                  | only in image
nat66_plugin_enable_disable_reply                            | only in image
nat66_static_mapping_details                                 | message CRC32 fix
nat_det_add_del_map                                          | message CRC32 fix
nat_det_close_session_in                                     | message CRC32 fix
nat_det_close_session_out                                    | message CRC32 fix
nat_det_map_details                                          | message CRC32 fix
nsh_add_del_map                                              | message CRC32 fix
nsh_map_details                                              | message CRC32 fix
nsim_cross_connect_enable_disable                            | message CRC32 fix
one_add_del_adjacency                                        | message CRC32 fix
one_add_del_l2_arp_entry                                     | message CRC32 fix
one_add_del_local_eid                                        | message CRC32 fix
one_add_del_map_resolver                                     | message CRC32 fix
one_add_del_map_server                                       | message CRC32 fix
one_add_del_ndp_entry                                        | message CRC32 fix
one_add_del_remote_mapping                                   | message CRC32 fix
one_adjacencies_get_reply                                    | message CRC32 fix
one_eid_table_details                                        | message CRC32 fix
one_eid_table_dump                                           | message CRC32 fix
one_l2_arp_entries_get_reply                                 | message CRC32 fix
one_locator_details                                          | message CRC32 fix
one_map_resolver_details                                     | message CRC32 fix
one_map_server_details                                       | message CRC32 fix
one_ndp_entries_get_reply                                    | message CRC32 fix
one_stats_details                                            | message CRC32 fix
one_use_petr                                                 | message CRC32 fix
p2p_ethernet_add                                             | message CRC32 fix
p2p_ethernet_del                                             | message CRC32 fix
pipe_create_reply                                            | message CRC32 fix
pipe_details                                                 | message CRC32 fix
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
policer_add_del                                              | message CRC32 fix
policer_bind                                                 | only in image
policer_bind_reply                                           | only in image
policer_details                                              | message CRC32 fix
policer_input                                                | only in image
policer_input_reply                                          | only in image
pppoe_add_del_session                                        | message CRC32 fix
pppoe_session_details                                        | message CRC32 fix
proxy_arp_add_del                                            | message CRC32 fix
proxy_arp_details                                            | message CRC32 fix
punt_socket_deregister                                       | message CRC32 fix
punt_socket_details                                          | message CRC32 fix
punt_socket_register                                         | message CRC32 fix
qos_record_details                                           | message CRC32 fix
qos_record_enable_disable                                    | message CRC32 fix
qos_store_details                                            | message CRC32 fix
qos_store_enable_disable                                     | message CRC32 fix
rdma_create_v3                                               | only in image
rdma_create_v3_reply                                         | only in image
session_rule_add_del                                         | message CRC32 fix
session_rules_details                                        | message CRC32 fix
set_ip_flow_hash_router_id                                   | only in image
set_ip_flow_hash_router_id_reply                             | only in image
set_ip_flow_hash_v2                                          | only in image
set_ip_flow_hash_v2_reply                                    | only in image
set_ipfix_exporter                                           | message CRC32 fix
set_punt                                                     | message CRC32 fix
show_lisp_use_petr_reply                                     | message CRC32 fix
show_one_use_petr_reply                                      | message CRC32 fix
sr_localsid_add_del                                          | message CRC32 fix
sr_localsids_details                                         | message CRC32 fix
sr_mpls_policy_assign_endpoint_color                         | message CRC32 fix
sr_mpls_steering_add_del                                     | message CRC32 fix
sr_policies_details                                          | message CRC32 fix
sr_policy_add                                                | message CRC32 fix
sr_policy_mod                                                | message CRC32 fix
sr_steering_add_del                                          | message CRC32 fix
sr_steering_pol_details                                      | message CRC32 fix
stn_add_del_rule                                             | message CRC32 fix
stn_rules_details                                            | message CRC32 fix
svs_details                                                  | message CRC32 fix
svs_route_add_del                                            | message CRC32 fix
sw_if_l2tpv3_tunnel_details                                  | message CRC32 fix
sw_interface_add_del_address                                 | message CRC32 fix
sw_interface_bond_details                                    | message CRC32 fix
sw_interface_details                                         | message CRC32 fix
sw_interface_event                                           | message CRC32 fix
sw_interface_ip6_get_link_local_address                      | only in image
sw_interface_ip6_get_link_local_address_reply                | only in image
sw_interface_ip6_set_link_local_address                      | message CRC32 fix
sw_interface_ip6nd_ra_prefix                                 | message CRC32 fix
sw_interface_lacp_details                                    | message CRC32 fix
sw_interface_rx_placement_details                            | message CRC32 fix
sw_interface_set_flags                                       | message CRC32 fix
sw_interface_set_l2_bridge                                   | message CRC32 fix
sw_interface_set_l2_xconnect                                 | message CRC32 fix
sw_interface_set_lldp                                        | message CRC32 fix
sw_interface_set_mac_address                                 | message CRC32 fix
sw_interface_set_promisc                                     | only in image
sw_interface_set_promisc_reply                               | only in image
sw_interface_set_rx_mode                                     | message CRC32 fix
sw_interface_set_unnumbered                                  | message CRC32 fix
sw_interface_span_details                                    | message CRC32 fix
sw_interface_span_enable_disable                             | message CRC32 fix
sw_interface_tap_v2_details                                  | message CRC32 fix
sw_interface_vhost_user_details                              | message CRC32 fix
sw_interface_virtio_pci_details                              | message CRC32 fix
syslog_get_sender_reply                                      | message CRC32 fix
syslog_set_sender                                            | message CRC32 fix
tap_create_v2                                                | message CRC32 fix
tcp_configure_src_addresses                                  | message CRC32 fix
teib_details                                                 | message CRC32 fix
teib_entry_add_del                                           | message CRC32 fix
udp_encap_add                                                | message CRC32 fix
udp_encap_details                                            | message CRC32 fix
udp_ping_add_del                                             | message CRC32 fix
virtio_pci_create                                            | message CRC32 fix
vmxnet3_details                                              | message CRC32 fix
vrrp_vr_add_del                                              | message CRC32 fix
vrrp_vr_details                                              | message CRC32 fix
vrrp_vr_peer_details                                         | message CRC32 fix
vrrp_vr_set_peers                                            | message CRC32 fix
vrrp_vr_track_if_add_del                                     | message CRC32 fix
vrrp_vr_track_if_details                                     | message CRC32 fix
vxlan_add_del_tunnel                                         | message CRC32 fix
vxlan_add_del_tunnel_v2                                      | only in image
vxlan_add_del_tunnel_v2_reply                                | only in image
vxlan_add_del_tunnel_v3                                      | only in image
vxlan_add_del_tunnel_v3_reply                                | only in image
vxlan_gbp_tunnel_add_del                                     | message CRC32 fix
vxlan_gbp_tunnel_details                                     | message CRC32 fix
vxlan_gpe_add_del_tunnel                                     | message CRC32 fix
vxlan_gpe_ioam_export_enable_disable                         | message CRC32 fix
vxlan_gpe_ioam_transit_disable                               | message CRC32 fix
vxlan_gpe_ioam_transit_enable                                | message CRC32 fix
vxlan_gpe_ioam_vni_disable                                   | message CRC32 fix
vxlan_gpe_ioam_vni_enable                                    | message CRC32 fix
vxlan_gpe_tunnel_details                                     | message CRC32 fix
vxlan_offload_rx                                             | message CRC32 fix
vxlan_tunnel_details                                         | message CRC32 fix
vxlan_tunnel_v2_details                                      | only in image
vxlan_tunnel_v2_dump                                         | only in image
want_ip_neighbor_events                                      | message CRC32 fix
want_l2_macs_events2                                         | only in image
want_l2_macs_events2_reply                                   | only in image

Found 456 api message signature differences


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
- nat44_ei_add_del_identity_mapping
- nat44_ei_add_del_identity_mapping_reply
- nat44_ei_add_del_interface_addr
- nat44_ei_add_del_interface_addr_reply
- nat44_ei_get_addr_and_port_alloc_alg
- nat44_ei_get_addr_and_port_alloc_alg_reply
- nat44_ei_get_mss_clamping
- nat44_ei_get_mss_clamping_reply
- nat44_ei_ha_get_failover
- nat44_ei_ha_get_failover_reply
- nat44_ei_ha_get_listener
- nat44_ei_ha_get_listener_reply
- nat44_ei_identity_mapping_details
- nat44_ei_identity_mapping_dump
- nat44_ei_interface_add_del_output_feature
- nat44_ei_interface_add_del_output_feature_reply
- nat44_ei_interface_addr_details
- nat44_ei_interface_addr_dump
- nat44_ei_interface_output_feature_details
- nat44_ei_interface_output_feature_dump
- nat44_ei_set_log_level
- nat44_ei_set_log_level_reply
- nat44_forwarding_enable_disable
- nat44_forwarding_enable_disable_reply
- nat44_forwarding_is_enabled
- nat44_forwarding_is_enabled_reply
- nat44_plugin_enable_disable
- nat44_plugin_enable_disable_reply
- nat44_session_cleanup
- nat44_session_cleanup_reply
- nat_control_ping
- nat_control_ping_reply
- nat_get_timeouts
- nat_get_timeouts_reply
- nat_ipfix_enable_disable
- nat_ipfix_enable_disable_reply
- nat_set_log_level
- nat_set_log_level_reply
- nat_set_timeouts
- nat_set_timeouts_reply
- nat_show_config
- nat_show_config_2
- nat_show_config_2_reply
- nat_show_config_reply
- rdma_create_v2
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

| @c src/vnet/policer/policer_types.api ||
| ------- | ------- |
| [c5299ff30](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c5299ff30) | policer: remove SSE2 prefix |

| @c src/vnet/policer/policer.api ||
| ------- | ------- |
| [b04683017](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=b04683017) | policer: add api to configure input policing |
| [48e26367c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=48e26367c) | policer: add api to bind policer to worker |

| @c src/vnet/session/session.api ||
| ------- | ------- |
| [a5a9efd4d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a5a9efd4d) | vcl session: switch to generic cert key apis |

| @c src/vnet/ipfix-export/ipfix_export.api ||
| ------- | ------- |
| [baa18701b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=baa18701b) | misc: ipfix process node wait time adjustment |

| @c src/vnet/ipsec/ipsec_types.api ||
| ------- | ------- |
| [f16e9a550](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f16e9a550) | ipsec: Support async mode per-SA |
| [9ec846c26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9ec846c26) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |
| [751bb131e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=751bb131e) | Revert "ipsec: Use the new tunnel API types to add flow label and TTL copy" |
| [c7eaa711f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7eaa711f) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |

| @c src/vnet/ipsec/ipsec.api ||
| ------- | ------- |
| [9ec846c26](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9ec846c26) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |
| [751bb131e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=751bb131e) | Revert "ipsec: Use the new tunnel API types to add flow label and TTL copy" |
| [c7eaa711f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7eaa711f) | ipsec: Use the new tunnel API types to add flow label and TTL copy support |
| [a9e2774f5](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a9e2774f5) | ipsec: Deprecated the old IPsec Tunnel interface |
| [95f59f380](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=95f59f380) | ipsec: Mark the interface create reply deprecated |

| @c src/vnet/devices/virtio/vhost_user.api ||
| ------- | ------- |
| [27ba5008a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=27ba5008a) | vhost: Add event index for interrupt notification to driver |

| @c src/vnet/ip/ip.api ||
| ------- | ------- |
| [976b259be](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=976b259be) | fib: Allow the creation of new source on the API |
| [8f5fef2c7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=8f5fef2c7) | ip: Path MTU |
| [3d5f08a82](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3d5f08a82) | ip: Router ID included in flow hash |
| [f2984bbb0](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f2984bbb0) | ip: use IPv6 flowlabel in flow hash computation |
| [58a1915b5](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=58a1915b5) | ip: add API to retrieve IPv6 link-layer address |

| @c src/vnet/l2/l2.api ||
| ------- | ------- |
| [0f8d10035](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0f8d10035) | l2: Separating scan-delay and learn-limit into a separate API from want_l2_macs_events |
| [5f93e3b7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=5f93e3b7f) | l2: add per bridge domain learn limit |

| @c src/vnet/flow/flow_types.api ||
| ------- | ------- |
| [91f102ed8](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=91f102ed8) | flow: The type of vni in VxLAN flow should be u32 |

| @c src/vnet/flow/flow.api ||
| ------- | ------- |
| [c7e7819ad](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=c7e7819ad) | flow: Add API implementation of IP4/IP6, IP4_VXLAN/IP6_VXLAN |

| @c src/vnet/fib/fib_types.api ||
| ------- | ------- |
| [976b259be](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=976b259be) | fib: Allow the creation of new source on the API |

| @c src/vnet/fib/fib.api ||
| ------- | ------- |
| [976b259be](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=976b259be) | fib: Allow the creation of new source on the API |

| @c src/vnet/vxlan/vxlan.api ||
| ------- | ------- |
| [3e38422ab](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3e38422ab) | vxlan: Fix L3 mode |
| [839dcc0fb](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=839dcc0fb) | vxlan: add udp-port configuration support |

| @c src/vnet/bfd/bfd.api ||
| ------- | ------- |
| [4376ab2a9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4376ab2a9) | tests: use socket transport instead of shared memory |

| @c src/vnet/interface.api ||
| ------- | ------- |
| [fd0b399ff](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fd0b399ff) | interface: Add promisc on/off in api |

| @c src/vnet/tunnel/tunnel_types.api ||
| ------- | ------- |
| [a91cb4590](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a91cb4590) | tunnel: support copying TTL and flow label from inner to outer |

| @c src/vnet/interface_types.api ||
| ------- | ------- |
| [6a999d67d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6a999d67d) | interface: RX/TX direction type in API |

| @c src/vat2/test/vat2_test.api ||
| ------- | ------- |
| [ab9f57355](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ab9f57355) | api: crchcecker ignore version < 1.0.0 and outside of src directory |
| [71134f26a](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=71134f26a) | vat2: jsonconvert return checking - coverity |
| [93c4b1bb3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=93c4b1bb3) | vppapigen: more _fromjson autogeneration coverity fixes |
| [316967cfa](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=316967cfa) | vppapigen: fix coverity issues in jsonconvert |
| [cf0102b3b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=cf0102b3b) | vppapigen: coverity issues in autogenerated code pass 3. |
| [fb0afab7f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fb0afab7f) | vppapigen: fix fromjson coverity errors in generation |

| @c src/plugins/gbp/gbp.api ||
| ------- | ------- |
| [dc22c839f](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=dc22c839f) | tests: clean up gbp calls from vpp_papi_provider |

| @c src/plugins/map/map.api ||
| ------- | ------- |
| [9302cfea9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=9302cfea9) | vppapigen: Support an 'autoendian' keyword for message definitions in .api files |

| @c src/plugins/arping/arping.api ||
| ------- | ------- |
| [a77ae4708](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a77ae4708) | arping: add arping command |

| @c src/plugins/linux-cp/lcp.api ||
| ------- | ------- |
| [6bb77dec7](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=6bb77dec7) | linux-cp: A V2 variant of pair create API that returns the host interface created |
| [4376ab2a9](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4376ab2a9) | tests: use socket transport instead of shared memory |
| [44db1caef](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=44db1caef) | linux-cp: Linux Interface Mirroring for Control Plane Integration |

| @c src/plugins/ikev2/ikev2_types.api ||
| ------- | ------- |
| [68d275356](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=68d275356) | ikev2: add per SA stats |

| @c src/plugins/ikev2/ikev2.api ||
| ------- | ------- |
| [af2cc6425](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=af2cc6425) | ikev2: support responder hostname |
| [68d275356](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=68d275356) | ikev2: add per SA stats |
| [fab5e7f39](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=fab5e7f39) | ikev2: use new counters data model & add more counters |

| @c src/plugins/nat/det44/det44.api ||
| ------- | ------- |
| [0eaf4e678](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0eaf4e678) | nat: Final NAT44 EI/ED split patch |

| @c src/plugins/nat/nat44-ed/nat44_ed.api ||
| ------- | ------- |
| [e3f078fcf](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e3f078fcf) | nat: fix byte order on ipfix message fields |
| [e7a80a98b](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e7a80a98b) | nat: NAT44ED fail if using old plugin option |
| [0eaf4e678](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0eaf4e678) | nat: Final NAT44 EI/ED split patch |

| @c src/plugins/nat/nat64/nat64.api ||
| ------- | ------- |
| [0eaf4e678](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0eaf4e678) | nat: Final NAT44 EI/ED split patch |

| @c src/plugins/nat/nat66/nat66.api ||
| ------- | ------- |
| [ed2ee5e57](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ed2ee5e57) | nat: NAT66 plugin enable&disable calls update |
| [0eaf4e678](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0eaf4e678) | nat: Final NAT44 EI/ED split patch |

| @c src/plugins/nat/pnat/pnat.api ||
| ------- | ------- |
| [ec34fb772](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ec34fb772) | pnat: coverity errors |
| [ab3151c52](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=ab3151c52) | nat: pnat copy and clear byte instructions |
| [18327be5d](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=18327be5d) | nat: 1:1 policy NAT |

| @c src/plugins/nat/lib/nat_types.api ||
| ------- | ------- |
| [0eaf4e678](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0eaf4e678) | nat: Final NAT44 EI/ED split patch |

| @c src/plugins/nat/nat44-ei/nat44_ei.api ||
| ------- | ------- |
| [01930f568](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=01930f568) | nat: report correct EI per-user session limit |
| [e3f078fcf](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=e3f078fcf) | nat: fix byte order on ipfix message fields |
| [0eaf4e678](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=0eaf4e678) | nat: Final NAT44 EI/ED split patch |

| @c src/plugins/af_xdp/af_xdp.api ||
| ------- | ------- |
| [a42c41be4](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=a42c41be4) | af_xdp: workaround kernel race between poll() and sendmsg() |

| @c src/plugins/mss_clamp/mss_clamp.api ||
| ------- | ------- |
| [bf55e9931](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=bf55e9931) | mss_clamp: TCP MSS clamping plugin |

| @c src/plugins/rdma/rdma.api ||
| ------- | ------- |
| [f5a45680e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=f5a45680e) | rdma: add support for RSS configuration |

| @c src/plugins/cnat/cnat.api ||
| ------- | ------- |
| [516b0adf6](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=516b0adf6) | cnat: Add calico/k8s src policy |
| [3fd77f7de](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=3fd77f7de) | cnat: Prepare extended snat policies |
| [cc9a1a0d3](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=cc9a1a0d3) | cnat: add input feature node |
| [4d237874e](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=4d237874e) | cnat: Add maglev support |
| [27647a27c](https://gerrit.fd.io/r/gitweb?p=vpp.git;a=commit;h=27647a27c) | cnat: fixes & prepare maglev |


