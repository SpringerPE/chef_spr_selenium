#
# Cookbook Name:: selenium-grid
# Recipe:: default
#
include_recipe 'spr_selenium::xvfb'
include_recipe 'spr_selenium::firefox'
include_recipe 'spr_selenium::chromium'
