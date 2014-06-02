#
# Cookbook Name:: spr_selenium
# Recipe:: chromium
#
# Copyright 2014, Springer Platform Engineering
#
# All rights reserved - Do Not Redistribute
#

case node.platform
when "ubuntu" then
  package "chromium-browser"
when "centos" then
  # TODO: Point this to our internal repository?
  include_recipe 'yum'
  
  yum_repository 'hughesjr-chromium' do
    description "CentOS-6 - Chromium hughesjr EL6"
    baseurl "http://people.centos.org/hughesjr/chromium/6/$basearch/"
    gpgkey 'http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-Testing-6'
    action :create
  end
  
  package "chromium"
  
end


