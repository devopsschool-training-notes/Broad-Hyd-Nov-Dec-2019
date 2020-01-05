git "/opt/" do
  repository "https://github.com/scmgalaxy/chef-repo/tree/master/cookbooks"
  reference "master"
  action :sync
end
