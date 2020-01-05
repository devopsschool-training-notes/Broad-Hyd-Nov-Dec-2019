

remote_file '/var/' do
  source 'https://github.com/devopsschool-lab-exercise/Broad-Hyd-Nov-Dec-2019.git'
  force_unlink true
  action :create
end
