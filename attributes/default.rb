#
# Cookbook Name:: openvpnc
# Attributes:: openvpnc
#

default['openvpnc']['local']           = "0.0.0.0"
default['openvpnc']['remote']          = "0.0.0.0"
default['openvpnc']['proto']           = 'udp'
default['openvpnc']['port']            = '1194'
default['openvpnc']['type']            = 'client'
default['openvpnc']['log']             = '/var/log/openvpn.log'
default['openvpnc']['fragment']        = nil
default['openvpnc']['mssfix']          = nil

default['openvpnc']['key_dir']         = '/etc/openvpn/keys'
default['openvpnc']['ca_cert']         = "ca.crt"
default['openvpnc']['tls_key']         = "ta.key"
default['openvpnc']['client_key']      = "client.key"
default['openvpnc']['client_cert']     = "client.crt"
default['openvpnc']['tls_cipher']      = "DHE-RSA-AES256-SHA"
default['openvpnc']['cipher']          = "AES-256-CBC"

default['openvpnc']['ns_cert_type']    = "server"

default['openvpnc']['routes']          = []
default['openvpnc']['user']            = 'nobody'
default['openvpnc']['group']           = case node['platform_family']
                                        when 'rhel'
                                          'nobody'
                                        else
                                          'nogroup'
                                        end
