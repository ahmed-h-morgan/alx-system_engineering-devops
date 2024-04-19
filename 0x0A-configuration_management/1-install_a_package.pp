# Using Puppet, install flask from pip3.
package { 'flask':
  ensure          => '2.1.0',
  provider        => 'pip3',
  install_options => [
    { '--index-url' => 'https://pypi.mycorp.com' },
  ]

}
