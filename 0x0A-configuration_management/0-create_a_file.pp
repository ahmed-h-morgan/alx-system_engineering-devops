# a puppet to create a file 

file { '/temp/school':
  path    => '/tmp',
  ensure  => 'present',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
