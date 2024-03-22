# Install Flask 2.1.0
exec { 'uninstall_flask':
  command => 'pip3 uninstall -y flask',
  path    => ['/usr/bin', '/usr/sbin'],
  onlyif  => 'pip3 show flask',
  before  => Package['flask_2.1.0'],
}

package { 'flask_2.1.0':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3',
}

# Install Flask 2.1.1
exec { 'uninstall_flask_2.1.0':
  command => 'pip3 uninstall -y flask',
  path    => ['/usr/bin', '/usr/sbin'],
  onlyif  => 'pip3 show flask',
  before  => Package['flask_2.1.1'],
}

package { 'flask_2.1.1':
  ensure   => '2.1.1',
  name     => 'flask',
  provider => 'pip3',
}
