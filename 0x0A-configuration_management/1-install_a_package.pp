# Using Puppet, install flask from pip3.
package { 'flask':
  ensure          => 'installed',
  provider        => 'pip3',
  install_options => [
    { '--index-url' => 'https://pypi.mycorp.com' },
  ]
}
