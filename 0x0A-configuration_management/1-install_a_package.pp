# Using Puppet, install flask from pip3.
package { 'flask':
  ensure          => '2.1.0',
  provider        => 'pip3',
  command         => 'sudo apt install python3-pip | pip3 install flask',
  # command         => 'pip3 install flask',
  # install_options => [
  #   { '--index-url' => 'https://pypi.mycorp.com' },
  # ]

}
