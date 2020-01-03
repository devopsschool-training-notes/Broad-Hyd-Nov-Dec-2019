#1 Write a recipe to create a file which should be owned by group called “root”, user “ec2-user” and permission executable.

file 'firstfile.txt' do
  group                      "root"
  mode                       755
  owner                      "ec2-user"
  action                     :create
end

#2 Write a recipe to updates the access (atime) and file modification (mtime) times for a file.
#Getting executed everytime as its touch command

file 'firstfile.txt' do
  action                     :touch
end


