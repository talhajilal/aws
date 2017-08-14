#import '/etc/puppet/modules/talha-training/manifests/init.pp'
import '/etc/puppet/modules/mcollective/manifests/init.pp'
import '/etc/puppet/modules/activemq/manifests/init.pp'
#import '/etc/puppet/modules/java/manifests/init.pp'
import '/etc/puppet/modules/stdlib/manifests/init.pp'
import '/etc/puppet/modules/mcollective/manifests/init.pp'
import 'vcs.pp'
import 'hosts.pp'
import 'man.pp'
import 'http.pp'
import 'motd.pp'
#import '/opt/puppet-v1/ntp.pp'
import 'ntp.pp'
node 'puppetmaster' {
include helloworld
include etc_hosts
include man
include vcs
include mcollective
}


node 'puppet' {
include helloworld
include man
include etc_hosts
include ntpd
}
