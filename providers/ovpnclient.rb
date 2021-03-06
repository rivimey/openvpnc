#
# Cookbook Name:: openvpn_client
# Provider:: conf
#
# Copyright 2013, Tacit Knowledge, Inc.
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

use_inline_resources

# OpenVPN Configuration directory

action :create do
  vars = {
    :log => new_resource.log,
    :port => new_resource.port,
    :proto => new_resource.proto,
    :type => new_resource.type,
    :local => new_resource.local,
    :remote => new_resource.remote,
    :routes => new_resource.routes,
    :mssfix => new_resource.mssfix,
    :fragment => new_resource.fragment,
    :key_dir => new_resource.key_dir,
    :key_size => new_resource.key_size,
    :ns_cert_type => new_resource.ns_cert_type,
    :cipher => new_resource.cipher,
    :subnet => new_resource.subnet,
    :netmask => new_resource.netmask,
    :user => new_resource.user,
    :group => new_resource.group,
    :verb => new_resource.verb,
    :mute => new_resource.mute,
    :dhcp_dns => new_resource.dhcp_dns,
    :client_key => new_resource.client_key,
    :client_cert => new_resource.client_cert,
    :ca_cert => new_resource.ca_cert,
    :tls_key => new_resource.tls_key,
    :tls_cipher => new_resource.tls_cipher,
    :dhcp_domain => new_resource.dhcp_domain,
    :duplicate_cn => new_resource.duplicate_cn,
    :interface_num => new_resource.interface_num,
    :client_subnet_route => new_resource.client_subnet_route,
    :max_clients => new_resource.max_clients,
    :status_log => new_resource.status_log,
    :config_dir => new_resource.config_dir,
    :plugins => new_resource.plugins
  }

  directory new_resource.config_dir do
    owner 'root'
    group 'root'
    mode  '0700'
  end

  template "#{new_resource.config_dir}/#{new_resource.name}.conf" do
    source 'client.conf.erb'
    owner 'root'
    group 'root'
    mode 0644
    variables vars
  end

end

action :delete do
  file "#{new_resource.config_dir}/#{new_resource.name}.conf" do
    action :delete
  end
end

def load_current_resource
  @current_resource ||= Chef::Resource::File.new("#{new_resource.config_dir}/#{new_resource.name}.conf")
  @current_resource.name ||= new_resource.name
  @current_resource.path("#{new_resource.config_dir}/#{new_resource.name}.conf")
  @current_resource
end
