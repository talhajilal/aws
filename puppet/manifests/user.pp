user { 'tjilal':
  ensure     => present,
  uid        => '1000',
  gid        => 'test',
  shell      => '/bin/bash',
  home       => '/home/tjilal',
  managehome => true,
}

