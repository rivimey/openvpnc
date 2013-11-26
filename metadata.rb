name              'openvpn'
maintainer        'Opscode, Inc.'
maintainer_email  'cookbooks@opscode.com'
license           'Apache 2.0'
description       'Installs and configures openvpn and includes rake tasks for managing certs'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '2.1.0'

recipe 'openvpn', 'Installs and configures openvpn'
recipe 'openvpnc::users', 'Sets up openvpn cert/configs for users data bag items'

supports 'centos'
supports 'debian'
supports 'fedora'
supports 'redhat'
supports 'ubuntu'

attribute 'openvpnc/local',
          :display_name => 'OpenVPN Local',
          :description  => 'Local interface (ip) to listen on',
          :default      => 'ipaddress',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/proto',
          :display_name => 'OpenVPN Protocol',
          :description  => 'UDP or TCP',
          :default      => 'udp',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/type',
          :display_name => 'OpenVPN Type',
          :description  => 'Server or server-bridge',
          :default      => 'server',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/subnet',
          :display_name => 'OpenVPN Subnet',
          :description  => 'Subnet to hand out to clients',
          :default      => '10.8.0.0',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/netmask',
          :display_name => 'OpenVPN Netmask',
          :description  => 'Netmask for clients',
          :default      => '255.255.0.0',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/port',
          :display_name => 'OpenVPN Listen Port',
          :description  => 'Port to listen on, defaults to 1194',
          :default      => '1194',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/mssfix',
          :display_name => 'mssfix',
          :description  => '',
          :default      => nil,
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/tls_cipher',
          :display_name => 'TLS Cipher type',
          :description  => 'TLS Cipher type',
          :default      => nil,
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/cipher',
          :display_name => 'Cipher type',
          :description  => 'Cipher type',
          :default      => nil,
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/gateway',
          :display_name => 'OpenVPN Gateway FQDN',
          :description  => 'FQDN for the VPN gateway server. Default is vpn.domain',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/log',
          :display_name => 'OpenVPN Log File',
          :description  => 'OpenVPN Server log file. Default /var/log/openvpn.log',
          :default      => '/var/log/openvpn.log',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/key_dir',
          :display_name => 'OpenVPN Key Directory',
          :description  => 'Location to store keys, certificates and related files. Default /etc/openvpn/keys',
          :default      => '/etc/openvpn/keys',
          :recipes      => ['openvpnc::default', 'openvpnc::users']

attribute 'openvpnc/routes',
          :display_name => 'OpenVPN Routes',
          :description  => 'Array of routes to add as push statements in the server.conf. Default is empty',
          :type         => 'array',
          :recipes      => ['openvpnc::default']

attribute 'openvpnc/mssfix',
          :display_name => 'MSS Fix',
          :description  => 'Max Packet size, if Path MTU discovery fails',
          :default      => '1540',
          :recipes      => ['openvpnc::default', 'openvpnc::users']

attribute 'openvpnc/fragment',
          :display_name => 'Max fragment size',
          :description  => 'Max IP Fragment size',
          :default      => '1540',
          :recipes      => ['openvpnc::default', 'openvpnc::users']

attribute 'openvpnc/script_security',
          :display_name => 'OpenVPN Script Security',
          :description  => 'Script Security setting to use in server config. Default is 1. The "up" script will not be included in the configuration if this is 0 or 1. Set it to 2 to use the "up" script',
          :default      => '1',
          :recipes      => ['openvpnc::default']


