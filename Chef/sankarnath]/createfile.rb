
file 'firstfile.txt' do

  group                      "root"

  mode                       755

  owner                      "ec2-user"

  action                     :create

end

file 'firstfile.txt' do

  action                     :touch

end
