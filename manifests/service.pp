# Class: elasticsearch::service
#
# This class manages the elasticsearch daemon.
#
class elasticsearch::service {

  $elasticsearch_service_name        = $::elasticsearch::params::elasticsearch_service_name
  $elasticsearch_service_ensure      = $::elasticsearch::params::elasticsearch_service_ensure
  $elasticsearch_service_enable      = $::elasticsearch::params::elasticsearch_service_enable
  $elasticsearch_service_hasstatus   = $::elasticsearch::params::elasticsearch_service_hasstatus

  service { $elasticsearch_service_name:
      ensure     => $elasticsearch_service_ensure,
      enable     => $elasticsearch_service_enable,
      hasstatus  => $elasticsearch_service_hasstatus,
  }
}
