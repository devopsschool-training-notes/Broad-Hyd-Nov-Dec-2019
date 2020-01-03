group 'chefgroup' do
  comment               "Group created with Chef"
  group_name            "chefgroup"
  action                :create
end

user 'Create User' do
  comment 'chef user creation'
  gid 'chefgroup'
  home '/home/chef_user'
  shell '/bin/bash'
  password 'welcome1'
end
