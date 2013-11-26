#
# Cookbook Name:: openvpn
# Recipe:: default
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

# key_dir  = node['openvpn']['key_dir']

#package 'openvpn' do
#  action :install
#end
#
#directory key_dir do
#  owner 'root'
#  group 'root'
#  mode  '0700'
#end
#
#openvpnc_ovpnclient 'client' do
#  port node['openvpn']['port']
#  proto node['openvpn']['proto']
#  type node['openvpn']['type']
#  local node['openvpn']['local']
#  remote node['openvpn']['remote']
#  mssfix node['openvpn']['mssfix']
#  fragment node['openvpn']['fragment']
#  ns_cert_type node['openvpn']['ns_cert_type']
#  tls_cipher node['openvpn']['tls_cipher']
#  cipher node['openvpn']['cipher']
#  routes node['openvpn']['routes']
#  script_security node['openvpn']['script_security']
#  key_dir node['openvpn']['key_dir']
#  subnet node['openvpn']['subnet']
#  netmask node['openvpn']['netmask']
#  user node['openvpn']['user']
#  group node['openvpn']['group']
#  log node['openvpn']['log']
#
#  notifies :restart, 'service[openvpn]'
#end
#
#service 'openvpn' do
#  action [:enable, :start]
#end
