include network

network::bond::static { 'bond0':
  ensure       => 'up',
  ipaddress    => $::ipaddress,
  netmask      => $::netmask,
  gateway      => '172.24.220.1',
  dns1         => '155.52.45.100',
  dns2         => '155.52.46.53',
  bonding_opts => 'mode=active-backup miimon=100 primary=em1',
  domain       => 'dfci.harvard.edu',
}

network::bond::slave { 'em1':
  macaddress   => $::macaddress_em1,
  master       => 'bond0',
}

network::bond::slave { 'em2':
  macaddress   => $::macaddress_em2,
  master       => 'bond0',
}

