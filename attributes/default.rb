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

default['openvpnc']['ns_cert_type']    = "server"
default['openvpnc']['tls_cipher']      = "DHE-RSA-AES256-SHA"
default['openvpnc']['cipher']          = "AES-256-CBC"

default['openvpnc']['key_dir']         = '/etc/openvpn/keys'
default['openvpnc']['signing_ca_key']  = "#{node["openvpnc"]["key_dir"]}/ca.key"
default['openvpnc']['signing_ca_cert'] = "#{node["openvpnc"]["key_dir"]}/ca.crt"
default['openvpnc']['routes']          = []
default['openvpnc']['user']            = 'nobody'
default['openvpnc']['group']           = case node['platform_family']
                                        when 'rhel'
                                          'nobody'
                                        else
                                          'nogroup'
                                        end
