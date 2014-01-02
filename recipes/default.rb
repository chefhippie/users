#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2013, Thomas Boerger
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

include_recipe "homeshick"
include_recipe "sshkey"
include_recipe "account"

homeshick "root" do
  home "/root"
  keys node["users"]["castles"]
end

sshkey "root" do
  home "/root"
  keys node["users"]["sshkeys"]
end

users = if Chef::Config[:solo] and not node.recipes.include?("chef-solo-search")
  node["users"]["users"]
else
  search(
    node["users"]["data_bag"],
    "available:#{node["fqdn"]} OR available:default"
  )
end

users.each do |user|
  account user["username"] do
    system user["system"]
    uid user["uid"]
    gid user["gid"]
    home user["home"]
    shell user["shell"]
    sudo user["sudo"]

    homeshicks user["castles"] || {}
    sshkeys user["sshkeys"] || {}
  end
end
