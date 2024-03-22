# install flask using puppet

exec { 'install_flask':
  command => 'pip3 install flask-2.1.0',
  path => ['/usr/bin'],
  unless => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
}

exec { 'install_werkzeug':
  command => 'pip3 install werkzeug-2.1.1',
  path => ['/usr/bin'],
  unless => '/usr/bin/pip3 show werkzeug | grep -q "Version: 2.1.1"',
}
