# config server using puppet
# ssh_client_config.pp

file { '/etc/ssh/ssh_config':
  ensure => 'present',
  owner   => 'ubuntu',
  mode    => '0600',
  content => "Host *\n IdentityFile ~/.ssh/school\n PasswordAuthentication no\n",
}
