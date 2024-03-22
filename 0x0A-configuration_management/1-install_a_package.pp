#!/usr/bin/pup
# Install an especific version of flask

exec { 'uninstall_flask':
  command => 'pip3 uninstall -y flask',
  path    => ['/usr/bin', '/usr/sbin'],
  before  => Package['flask'],
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
