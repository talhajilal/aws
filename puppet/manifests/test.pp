 class helloworld {

    file { '/etc/motd':
    owner  => 'root',
    group  => 'root',
    mode    => '0644',
    content => "hello test 123, world!\n",
    }

 }
