class ntpd {
package { 'ntp':
  ensure => '4.2.6p5-10.el6.centos.2',
}
service { 'ntpd':
  ensure => 'running',
  enable => 'true'
}

file { "ntp_d":
  ensure  => "file",
  group   => "0",
  mode    => "644",
  owner   => "root",
  #type    => "file",
  path    => "/etc/ntp.conf",
  source  => "puppet:///files/ntp.conf"
}


}
