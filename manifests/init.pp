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

  $package_elasticsearch_version        = $::elasticsearch::params::package_elasticsearch_version,
  $package_ensure                       = $::elasticsearch::params::package_ensure,
  $elasticsearch_service_name           = $::elasticsearch::params::elasticsearch_service_name,
  $elasticsearch_service_ensure         = $::elasticsearch::params::elasticsearch_service_ensure,
  $elasticsearch_service_enable         = $::elasticsearch::params::elasticsearch_service_enable,
  $elasticsearch_service_hasstatus      = $::elasticsearch::params::elasticsearch_service_hasstatus,

){

  include elasticsearch::install
  include elasticsearch::params
  include elasticsearch::service
  include jdk

  Class['jdk']
  -> Class['elasticsearch::install']
  -> Class['elasticsearch::service']

}
