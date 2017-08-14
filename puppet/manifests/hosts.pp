class etc_hosts {
host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
host { 'puppet':
  ensure => 'present',
  ip     => '192.168.1.3',
  target => '/etc/hosts',
}
host { 'puppetmaster':
  ensure       => 'present',
  host_aliases => ['puppetmaster'],
  ip           => '192.168.1.2',
  target       => '/etc/hosts',
}
host { 'stomp1':
  ensure       => 'present',
  host_aliases => ['stomp1'],
  ip           => '192.168.1.2',
  target       => '/etc/hosts',
}


host { 'web':
  ensure       => 'present',
  host_aliases => ['web'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
package { 'openssh-server':
  ensure => 'present',
}
file { "test_file":
  ensure  => "file",
  path => "/tmp/test.file",
  ##mode => 755,
  source => "puppet:///files/test.file"
}
file { "sshd_config":
  ensure  => "file",
  group   => "0",
  mode    => "644",
  owner   => "root",
  #type    => "file",
  path    => "/etc/ssh/sshd_config",
  source  => "puppet:///files/sshd_config"
}

}
