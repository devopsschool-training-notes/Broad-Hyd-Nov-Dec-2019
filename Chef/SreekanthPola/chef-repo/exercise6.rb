script 'exercise6' do
  interpreter "bash"
  code <<-EOH
    cd /opt
        mkdir git
        cd git
        yum install git -y
    EOH
end
