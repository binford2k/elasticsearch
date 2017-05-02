# = Class: elasticsearch::config
#
# This class installs the application.
#
class elasticsearch::config inherits elasticsearch {

  $config_dir           = $::elasticsearch::config_dir
  $config_file          = $::elasticsearch::config_file
  $config_file_mode     = $::elasticsearch::config_file_mode
  $config_file_owner    = $::elasticsearch::config_file_owner
  $config_file_group    = $::elasticsearch::config_file_group
  $config_file_template = $::elasticsearch::config_file_template

  file { $config_dir:
    ensure => directory,
    owner => $config_file_owner,
    group => $config_file_group,
  }
  file { $config_file:
    ensure => present,
    owner => $config_file_owner,
    group => $config_file_group,
    mode => $config_file_mode,
    content => template($config_file_template),
  }
}
