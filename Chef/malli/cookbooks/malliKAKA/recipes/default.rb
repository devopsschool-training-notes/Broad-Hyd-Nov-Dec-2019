#
# Cookbook:: malliKAKA
# Recipe:: default
#include_recipe '::seond'

file 'file1.txt' do
  group                      "root"
  owner                      "ec2-user"
  action		     :touch
end
# Copyright:: 2020, The Authors, All Rights Reserved.
