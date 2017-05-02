# == Class: elasticsearch
# Full description of class logstash here.
#
# === Parameters
# === Variables
# === Examples
# === Copyright
# Copyright 2017 Your name here, unless otherwise noted.
#
class elasticsearch (

  $package_elasticsearch_version                = $::elasticsearch::params::package_elasticsearch_version,
  $package_ensure                               = $::elasticsearch::params::package_ensure,
  $elasticsearch_service_name                   = $::elasticsearch::params::elasticsearch_service_name,
  $elasticsearch_service_ensure                 = $::elasticsearch::params::elasticsearch_service_ensure,
  $elasticsearch_service_enable                 = $::elasticsearch::params::elasticsearch_service_enable,
  $elasticsearch_service_hasstatus              = $::elasticsearch::params::elasticsearch_service_hasstatus,
  $action_destructive_requires_name             = $::elasticsearch::params::action_destructive_requires_name,
  $bootstrap_memory_lock                        = $::elasticsearch::params::bootstrap_memory_lock,
  $bootstrap_mlockall                           = $::elasticsearch::params::bootstrap_mlockall,
  $cluster_enabled                              = $::elasticsearch::params::cluster_enabled,
  $cluster_name                                 = $::elasticsearch::params::cluster_name,
  $discovery_zen_minimum_master_nodes           = $::elasticsearch::params::discovery_zen_minimum_master_nodes,
  $discovery_zen_ping_multicast_enabled         = $::elasticsearch::params::discovery_zen_ping_multicast_enabled,
  $discovery_zen_ping_unicast_hosts             = $::elasticsearch::params::discovery_zen_ping_unicast_hosts,
  $gateway_expected_nodes                       = $::elasticsearch::params::gateway_expected_nodes,
  $gateway_recover_after_nodes                  = $::elasticsearch::params::gateway_recover_after_nodes,
  $gateway_recover_after_time                   = $::elasticsearch::params::gateway_recover_after_time,
  $http_cors_allow_credentials                  = $::elasticsearch::params::http_cors_allow_credentials,
  $http_cors_allow_origin                       = $::elasticsearch::params::http_cors_allow_origin,
  $http_cors_enabled                            = $::elasticsearch::params::http_cors_enabled,
  $http_port                                    = $::elasticsearch::params::http_port,
  $index_merge_scheduler_max_thread_count       = $::elasticsearch::params::index_merge_scheduler_max_thread_count,
  $index_number_of_replicas                     = $::elasticsearch::params::index_number_of_replicas,
  $index_number_of_shards                       = $::elasticsearch::params::index_number_of_shards,
  $indices_store_throttle_max_bytes_per_sec     = $::elasticsearch::params::indices_store_throttle_max_bytes_per_sec,
  $network_host                                 = $::elasticsearch::params::network_host,
  $node_attr_rack                               = $::elasticsearch::params::node_attr_rack,
  $node_master                                  = $::elasticsearch::params::node_master,
  $node_name                                    = $::elasticsearch::params::node_name,
  $path_data                                    = $::elasticsearch::params::path_data,
  $path_logs                                    = $::elasticsearch::params::path_logs,
  $config_dir                                   = $::elasticsearch::params::config_dir,
  $config_file                                  = $::elasticsearch::params::config_file,
  $config_file_mode                             = $::elasticsearch::params::config_file_mode,
  $config_file_owner                            = $::elasticsearch::params::config_file_owner,
  $config_file_group                            = $::elasticsearch::params::config_file_group,
  $config_file_template                         = $::elasticsearch::params::config_file_template,

) inherits elasticsearch::params {

  include elasticsearch::install
  include elasticsearch::config
  include elasticsearch::params
  include elasticsearch::service
  include jdk

  Class['jdk']
  -> Class['elasticsearch::install']
  -> Class['elasticsearch::config']
  -> Class['elasticsearch::service']

}
