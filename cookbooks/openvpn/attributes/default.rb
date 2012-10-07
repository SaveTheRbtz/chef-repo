#
# Cookbook Name:: openvpn
# Attributes:: openvpn
#
# Copyright 2009, Opscode, Inc.
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

default["openvpn"]["local"]   = "0.0.0.0"
default["openvpn"]["proto"]   = "tcp"
default["openvpn"]["port"]    = "80"
default["openvpn"]["type"]    = "server"
default["openvpn"]["subnet"]  = "10.73.37.0"
default["openvpn"]["netmask"] = "255.255.255.0"
default["openvpn"]["gateway"] = "#{node["fqdn"]}"
default["openvpn"]["log"]     = "/var/log/openvpn.log"
default["openvpn"]["key_dir"] = "/etc/openvpn/keys"
default["openvpn"]["signing_ca_key"]  = "#{node["openvpn"]["key_dir"]}/ca.key"
default["openvpn"]["signing_ca_cert"] = "#{node["openvpn"]["key_dir"]}/ca.crt"
default["openvpn"]["routes"] = []
default["openvpn"]["script_security"] = 2
default["openvpn"]["push"] = ["redirect-gateway"]

# Used by helper library to generate certificates/keys
default["openvpn"]["key"]["ca_expire"] = 3650
default["openvpn"]["key"]["expire"]    = 3650
default["openvpn"]["key"]["size"]      = 4096
default["openvpn"]["key"]["country"]   = "US"
default["openvpn"]["key"]["province"]  = "CA"
default["openvpn"]["key"]["city"]      = "SanFrancisco"
default["openvpn"]["key"]["org"]       = "Palo Alto"
default["openvpn"]["key"]["email"]     = "rbtz@ph34r.me"
