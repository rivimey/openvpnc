#
# Cookbook Name:: openvpn
# Attributes:: openvpn
#
# Copyright 2009-2013, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['openvpn']['local']           = "0.0.0.0"
default['openvpn']['remote']          = "0.0.0.0"
default['openvpn']['proto']           = 'udp'
default['openvpn']['port']            = '1194'
default['openvpn']['type']            = 'client'
default['openvpn']['log']             = '/var/log/openvpn.log'
default['openvpn']['fragment']        = nil
default['openvpn']['mssfix']          = nil

default["openvpn"]["ns_cert_type"]    = "server"
default["openvpn"]["tls_cipher"]      = "DHE-RSA-AES256-SHA"
default["openvpn"]["cipher"]          = "AES-256-CBC"

default['openvpn']['key_dir']         = '/etc/openvpn/keys'
default['openvpn']['signing_ca_key']  = "#{node["openvpn"]["key_dir"]}/ca.key"
default['openvpn']['signing_ca_cert'] = "#{node["openvpn"]["key_dir"]}/ca.crt"
default['openvpn']['routes']          = []
default['openvpn']['user']            = 'nobody'
default['openvpn']['group']           = case node['platform_family']
                                        when 'rhel'
                                          'nobody'
                                        else
                                          'nogroup'
                                        end
