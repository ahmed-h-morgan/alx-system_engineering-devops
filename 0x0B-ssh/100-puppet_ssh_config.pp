# config server using puppet
ssh::server::host_key {'ssh_host_rsa_key':
  private_key_content => '~/.ssh/shool/id_rsa',
  public_key_content  => '~/.ssh/shool/id_rsa.pub',
  options => {
    'PasswordAuthentication' => 'no',
  }
}
