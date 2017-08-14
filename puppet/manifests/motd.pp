class helloworld {

    file { '/etc/motd':
    owner  => 'root',
    group  => 'root',
    mode    => '0644',
    content => "You are Entering In HELL Becarefull , I love Hackers if they can hack my system but make sure you have no foot prints left!\n",
    }

 }
