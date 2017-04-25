# = Class: elasticsearch::params
#
# This class provides a number of parameters.
#

class elasticsearch::params {

  $package_elasticsearch_version        = "elasticsearch"
  $package_ensure                       = "installed"
  $elasticsearch_service_name           = "elasticsearch"
  $elasticsearch_service_ensure         = "running"
  $elasticsearch_service_enable         = true
  $elasticsearch_service_hasstatus      = true

}
