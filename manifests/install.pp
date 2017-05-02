# = Class: elasticsearch::install
#
# This class installs the application.
#
class elasticsearch::install {

  $package_elasticsearch_version        = $::elasticsearch::params::package_elasticsearch_version
  $package_ensure                       = $::elasticsearch::params::package_ensure

  package { $package_elasticsearch_version:
    ensure => $package_ensure,
  }
}
