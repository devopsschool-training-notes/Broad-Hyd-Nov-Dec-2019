set[:about_me][:first_name] = "Rajesh Kumar"
default[:about_me][:favorite][:food] = "pizza"
default[:about_me][:favorite][:drink] = "water"
default[:about_me][:favorite][:hobby] = "running"

first_name = node[:about_me][:first_name]
food = node[:about_me][:favorite][:food]
drink = node[:about_me][:favorite][:drink]
hobby = node[:about_me][:favorite][:hobby]
  
  log "Hi, my name is #{first_name} and I like #{food}, #{drink} and #{hobby}."
