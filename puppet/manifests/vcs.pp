class vcs {
vcsrepo { '/opt/puppet-v1':
  ensure   => present,
#ensure   => latest,
  provider => git,
 source   => 'https://github.com/talhajilal/puppet-v1.git',
}
}
