What is Chef?
        Config mgmt tool
        Written in RUBY
        From OpsCode
        Release
            Community Version - Chef Server
            Enterprise Version - Chef Enterprise

What is Config mgmt?
        Infra as a Code
        ------------------
        SERVER(S) config mgmt

What is Infra as a Code?
        Write to code for infra.

What is there in the server?
            So we manage a config of it through CHef?
        
file
directory
Policy
Package
services
users
group
bash
ps
apt
yum
cho

USING CHEF you can manage all above resources and their config at LARGE scale.

SOFTWARE
    file
    directory
    Policy
    Package
    services
    bash
    ps
    apt
    yum
    cho
HARDWARE
    HYPERVISOR(Software)
        Storage
        MEMORY
        CPU
PEOPLE
    users
    group
PROCESS
    Policy

===============================================================================
            IT MANAGE a config of RESOURCES of your server(S)

Why Chef?
===============================
Chef is Easy to 
                Learn
                Debug
                Extend
                Test
                Share
                Integ
                Compare to JAVA CPP RUBY PYTHON PERL

                BASH SCRIPT ---- - NOT FOR WINDOWS
                PS - NOT FOR LINUX
                ---------------------------
                Need a Platform independent

                IDEOMPOTENT

                TOOL SHOUDL CHECK MY DESIRE and VS ACTUAL - and MATCH
                Desire          Actual 
                10 - 1min       0           ---> 10 mins
                2 - 1 mins      8           ---> 2 mins

                ABILITY to do Changes at LARGE SCALE with IDEOMPOTENT
                                         SERVER(S)

                Consitent

Other tools ->
Ansible --> Puppet -> Chef -> Salt -> ChefEngine
====================================================

What is my role in Chef?
================================
Programmer - You need to write a code

Admin - You need to apply a code in servers.

====================================================
How to become a Chef Programmer?
=============================================
Cook ->  Chef -> 
Food ->  Kitchen -> Cook -->Follow-> Recipe -> Chef -Write-> Recipe                        --> Cookbooks
                                                                    Ingredients(Resources)
                                                                    How???

How to write Recipe?
-----------------------------------------
Resources(Ingredients)          Properties          ACTION(How)

----
file                                                C D 
directory                                           C D         
Package                                             I U U R          
services                                            S S R E D
users                                               C M D
group                                               C M D
bash                                                RUN SCRIPT
Policy
ps
apt
yum
cho

Core Resources
https://docs.chef.io/resource_reference.html

Recipe
is collection of Resources with their ACTIONS and ATTRIBUTES desire by you.
==============================================================================
How to become a JAVA Prorammers?
======================================
JDK -> .JAVA        --> .Class -> .Class(S) --> JAR/WAR --> ADMIN(OPS)
        DATA TYPES
        Conditioning
        Looping
        Functions

How to become a Chef Prorammers and Write a Recipe?
ChefDK -> .rb ->                    --> .rb(S) --> Cookbooks -- ADMIN.
        Resources with their ACTIONS and ATTRIBUTES
        DATA TYPES (ATTRIBUTES)
        Conditioning only_if and not_if
        Looping
        Functions

===========================================================================
Which file extention to be used to store recipe?
.rb

How to test single Recipe?
Chef-apply

==================================================
Demo time?

Project
Setup a webserver.

Pseudocode
====================================
Create a file index.html
install a httpd
copy a file to /var/www/html
start a service
--------------------------------
IF THIS WOULD WORK IN ONE MACHINE --
                SAME USING CHEF - IT WOULD WORK IN MULTIPLE MACHINE.

13.233.251.195


CHEFDK OR Chef Workstation
================================
chef  
chef-apply          - TO TEST SINGLE RECIPE
chef-client  
chef-shell  
chef-solo  
chef-vault
foodcritic
knife

How to install ChefDK
https://downloads.chef.io/chefdk/4.6.35

2  yum install wget -y
    3  clear
    4  wget https://packages.chef.io/files/stable/chefdk/4.6.35/el/7/chefdk-4.6.35-1.el7.x86_64.rpm
    5  clear
    6  ls
    7  rpm -Uvh
    8  rpm -Uvh chefdk-4.6.35-1.el7.x86_64.rpm

[root@ip-172-31-9-157 bin]# chef -v
ChefDK version: 4.6.35
chefk Chef Infra Client version: 15.5.17                                                         Chef InSpec version: 4.18.39
Test Kitchen version: 2.3.4
Foodcritic version: 16.2.0
Cookstyle version: 5.13.7
[root@ip-172-31-9-157 bin]# chef -h
Usage:
    chef -h/--help
    chef -v/--version
    chef command [arguments...] [options...]


Available Commands:
    exec                    Runs the command in context of the embedded ruby
    env                     Prints environment variables used by ChefDK
    gem                     Runs the `gem` command in context of the embedded Ruby
    generate                Generate a new repository, cookbook, or other component
    shell-init              Initialize your shell to use ChefDK as your primary Ruby
    install                 Install cookbooks from a Policyfile and generate a locked cookbook set
    update                  Updates a Policyfile.lock.json with latest run_list and cookbooks
    push                    Push a local policy lock to a policy group on the Chef Infra Server
    push-archive            Push a policy archive to a policy group on the Chef Infra Server
    show-policy             Show policyfile objects on the Chef Infra Server
    diff                    Generate an itemized diff of two Policyfile lock documents
    export                  Export a policy lock as a Chef Infra Zero code repo
    clean-policy-revisions  Delete unused policy revisions on the Chef Infra Server
    clean-policy-cookbooks  Delete unused policyfile cookbooks on the Chef Infra Server
    delete-policy-group     Delete a policy group on the Chef Infra Server
    delete-policy           Delete all revisions of a policy on the Chef Infra Server
    undelete                Undo a delete command
    describe-cookbook       Prints cookbook checksum information used for cookbook identifier

==================================================
Repo - 


git clone https://github.com/devopsschool-lab-exercise/Broad-Hyd-Nov-Dec-2019
cd Broad-Hyd-Nov-Dec-2019
cd Chef
mkdir yourname
cd yourname
mkdir chef-repo

Write a recipe to create a file

file 'index.html' 


Write a recipe to delete a file

file 'index.html' do
  action :delete
end

Write a recipe to create a file with a permission of 755 and owned by ec2-user

file 'file4.txt' do
  mode                       755
  owner                      ec2-user
  action                     :create
end

Write a recipe to create a dir

directory 'src'


Create a file index.html with some content.
file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class<h1>"
end

install a package called httpd 
package 'httpd' 

copy a file to /var/www/html
bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end

start a service called httpd
service 'httpd' do
  action               [ :enable, :start ]
end

Lab 1 - 
https://www.devopsschool.com/blog/chef-lab-and-excercise-recipe-part-1/
25
ec2-user

1 13.127.227.51
2 13.235.79.223
3 13.233.7.44
4 13.233.15.162
5 13.235.78.48
6 13.126.8.102
7 13.233.156.219
8 13.235.79.29
9 13.234.31.3
10 13.232.199.17
11 15.206.164.176
12 13.233.131.116
13 15.206.127.131
14 13.126.253.98
15 52.66.76.254
16 13.127.194.194
17 13.232.33.4
18 52.66.244.187
19 13.233.154.218
20 13.233.151.143
21 13.233.36.178
22 13.126.154.50
23 13.233.192.226
24 13.127.7.202
25 13.233.36.42
26 15.206.179.207
================================================================
What is Cookbook?

    Title       Cookbook Name
    Authore     Cookbook Auhtor
    index
    Appendix    Cookbook Example
    Content - MAIN  Cookbook Recipe
    COPYRIGHT   Cookbook Cpyright
    Reference   Cookbook Dependency


Cookbook
    META INFO
    Recipes

    Template
    Libraries
    ATTRIBUTES
    Unit Test
    AT 
    Exaxple

How to create cookbook skeleton?

chef generate cookbook web

[root@ip-172-31-9-157 web]# tree
.
├── CHANGELOG.md
├── chefignore
├── kitchen.yml
├── LICENSE
├── metadata.rb
├── Policyfile.rb
├── README.md
├── recipes
│   └── default.rb
├── spec
│   ├── spec_helper.rb
│   └── unit
│       └── recipes
│           └── default_spec.rb
└── test
    └── integration
        └── default
            └── default_test.rb

7 directories, 11 files
[root@ip-172-31-9-157 web]#


file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class<h1>"
end

package 'httpd'

bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end


service 'httpd' do
  action               [ :enable, :start ]
end


chef-client --local-mode --runlist 'recipe[web]'
chef-client --local-mode --runlist 'recipe[web::service]'
How to include?
https://www.devopsschool.com/blog/how-to-call-another-chef-recipe-within-same-or-other-cookbook/

include_recipe '::service'
include_recipe 'web::service'

Lab 2 - 
https://www.devopsschool.com/blog/chef-lab-and-excercise-cookbooks-part-3/


How to setup a Server?
============================
https://www.devopsschool.com/tutorial/chef/chef-server-install-configuration-in-centos7.html
52.66.246.148
ec2-user

127.0.1.1 52.66.246.148 chef-server
127.0.0.1 localhost
52.66.246.148 172.31.12.0 chef-server




[root@ip-172-31-12-0 opt]# chef-server-ctl status
run: bookshelf: (pid 9437) 133s; run: log: (pid 2535) 232s
run: nginx: (pid 9371) 135s; run: log: (pid 3302) 181s
run: oc_bifrost: (pid 9252) 136s; run: log: (pid 2196) 259s
run: oc_id: (pid 9340) 136s; run: log: (pid 2223) 252s
run: opscode-erchef: (pid 9473) 132s; run: log: (pid 2725) 226s
run: opscode-expander: (pid 9430) 133s; run: log: (pid 2387) 239s
run: opscode-solr4: (pid 9405) 134s; run: log: (pid 2290) 244s
run: postgresql: (pid 9221) 137s; run: log: (pid 1661) 276s
run: rabbitmq: (pid 10360) 102s; run: log: (pid 3576) 175s
run: redis_lb: (pid 2826) 217s; run: log: (pid 2825) 217s


chef-server-ctl user-create rajeshkumar Rajesh Kumar devops@RajeshKumar.xyz 'password123' --filename rajeshkumar.pem

chef-server-ctl org-create broadridge 'broadridge fin svc' --association_user rajeshkumar --filename broadridge.pem


 # chef-server-ctl install chef-manage --accept-license 
 # chef-server-ctl reconfigure 
 # chef-manage-ctl reconfigure  --accept-license
=============================================================
Step 1 - Setup a Chef Server
Step 2 - Create a user
Step 3 - Create a Org
Step 4 - Setup Chef manage
Step 5 - Verify Chef server GUI
Step 6 - Understanding environment 
Step 7 - Understanding Roles
Step 8 - Understanding Databags  
Step 9 - Understanding Client
Step 10 - Installing knife 
Step 11 - Understanding knife.rb
Step 12 - Downloading Starter KIT
================ Working with KNIFE=====================
Step 1  - Develop/Download a Cookbook
STep 2 - SSL setup
Step 2 - Upload a Cookbook
Step 3 - BOOTSTRAPING A NODE
              ENV
              ROLE
Step 4 - CHEF SERVER WOULD PUSH A JOB
knife ssh 'name:*' 'sudo chef-client' --ssh-user ec2-user -i rajesh-mumbai.pem
Step 5 - CHEF NODE WOULD RUN AND TAKE A JOB
knife bootstrap 13.126.136.220 --ssh-user ec2-user --sudo -i rajesh-mumbai.pem --node-name rajesh1
Step 6 - CHEF NODE Should run a service and Pull should happen every 5 seconds
knife ssh 'name:vinay1' 'sudo chef-client' --ssh-user ec2-user -i rajesh-mumbai.pem

How to set a node with specific version of cookbook?
recipe[cookbook_name::recipe_name@cookbook_version]

IP - 13.126.136.220
User name - ec2-user
key - rajesh-mumbai.pem
sudo 

knife bootstrap 13.126.136.220 --ssh-user ec2-user --sudo -i rajesh-mumbai.pem --node-name rajesh1

knife bootstrap 13.126.136.220 --ssh-user ec2-user --sudo --identity-file rajesh-mumbai.pem --node-name rajesh1 --run-list recipe[web]

knife ssh 'name:*' 'sudo chef-client'
knife ssh 'name:*' 'sudo chef-client' --ssh-user ec2-user -i rajesh-mumbai.pem

knife node edit vinay1


##################Vinay Steps############



knife cookbook upload web-vinay
knife ssl fetch
knife ssl check
knife bootstrap 13.233.147.151 --ssh-user ec2-user --sudo -i rajesh-mumbai.pem --node-name vinay1
knife node edit vinay1
++++++++++++++++output of node edit+++++++++++++++++
{
  "name": "vinay1",
  "chef_environment": "_default",
  "normal": {
    "tags": []
  },
  "policy_name": null,
  "policy_group": null,
  "run_list": [
  "recipe[web-vinay]"
]
}

+++++++++++++++++++++++++++++++++++++++++++++
knife ssh 'name:vinay1' 'sudo chef-client' --ssh-user ec2-user -i rajesh-mumbai.pem 
####################################################






Workstation
35.154.48.196

Server
52.66.246.148
rajeshkumar
password123

Explained Chef AKA Chef Infra Architecture
https://www.devopsschool.com/blog/explained-chef-aka-chef-infra-architecture/

Chef Cookbook and Recipe Developement Guide and Reference with Example
https://www.devopsschool.com/blog/chef-cookbook-and-recipe-developement-guide-and-reference-with-example/

List Of Chef Tools and their explainations
https://www.devopsschool.com/blog/ecosystem-of-chef-and-its-associated-tools-explained/

Chef Infra Server and Administrator Guide and Reference
https://www.devopsschool.com/blog/chef-infra-server-and-administrator-guide-and-reference/

Chef Command Line Complete References
https://www.devopsschool.com/blog/chef-command-line-complete-references/

Chef FAQs Refereence
https://www.devopsschool.com/tutorial/chef/chef-faq-questions-answers.html

Chef Errors and Solutions Database
https://www.devopsschool.com/blog/chef-errors-and-solutions-database/


Usage: knife sub-command (options)
    -s, --server-url URL             Chef Infra Server URL.
        --chef-zero-host HOST        Host to start Chef Infra Zero on.
        --chef-zero-port PORT        Port (or port range) to start Chef Infra Zero on. Port ranges like 1000,1010 or 8889-9999 will try all given ports until one works.
    -k, --key KEY                    Chef Infra Server API client key.
        --[no-]color                 Use colored output, defaults to enabled.
    -c, --config CONFIG              The configuration file to use.
        --config-option OPTION=VALUE Override a single configuration option.
        --defaults                   Accept default values for all questions.
    -d, --disable-editing            Do not open EDITOR, just accept the data as is.
    -e, --editor EDITOR              Set the editor to use for interactive commands.
    -E, --environment ENVIRONMENT    Set the Chef Infra Client environment (except for in searches, where this will be flagrantly ignored).
        --[no-]fips                  Enable FIPS mode.
    -F, --format FORMAT              Which format to use for output. (valid options: 'summary', 'text', 'json', 'yaml', or 'pp')
        --[no-]listen                Whether a local mode (-z) server binds to a port.
    -z, --local-mode                 Point knife commands at local repository instead of Chef Infra Server.
    -u, --user USER                  Chef Infra Server API client username.
        --print-after                Show the data after a destructive operation.
        --profile PROFILE            The credentials profile to select.
    -V, --verbose                    More verbose output. Use twice for max verbosity.
    -v, --version                    Show Chef Infra Client version.
    -y, --yes                        Say yes to all prompts for confirmation.
    -h, --help                       Show this help message.

Available subcommands: (for details, knife SUB-COMMAND --help)

** CHEF ORGANIZATION MANAGEMENT COMMANDS **
knife opc org create ORG_SHORT_NAME ORG_FULL_NAME (options)
knife opc org delete ORG_NAME
knife opc org edit ORG
knife opc org list
knife opc org show ORGNAME
knife opc org user add ORG_NAME USER_NAME
knife opc org user remove ORG_NAME USER_NAME
knife opc user create USERNAME FIRST_NAME [MIDDLE_NAME] LAST_NAME EMAIL PASSWORD
knife opc user delete USERNAME [-d] [-R]
knife opc user edit USERNAME
knife opc user list
knife opc user password USERNAME [PASSWORD | --enable-external-auth]
knife opc user show USERNAME

** OPSCODE HOSTED CHEF ACCESS CONTROL COMMANDS **
knife acl add MEMBER_TYPE MEMBER_NAME OBJECT_TYPE OBJECT_NAME PERMS
knife acl bulk add MEMBER_TYPE MEMBER_NAME OBJECT_TYPE REGEX PERMS
knife acl bulk remove MEMBER_TYPE MEMBER_NAME OBJECT_TYPE REGEX PERMS
knife acl remove MEMBER_TYPE MEMBER_NAME OBJECT_TYPE OBJECT_NAME PERMS
knife acl show OBJECT_TYPE OBJECT_NAME
knife group add MEMBER_TYPE MEMBER_NAME GROUP_NAME
knife group create GROUP_NAME
knife group destroy GROUP_NAME
knife group list
knife group remove MEMBER_TYPE MEMBER_NAME GROUP_NAME
knife group show GROUP_NAME
knife user dissociate USERNAMES
knife user invite add USERNAMES
knife user invite list
knife user invite recind [USERNAMES] (options)

** AZURE COMMANDS **
knife azure ag create (options)
knife azure ag list (options)
knife azure image list (options)
knife azure internal lb create (options)
knife azure internal lb list (options)
knife azure server create (options)
knife azure server delete SERVER [SERVER] (options)
knife azure server list (options)
knife azure server show SERVER [SERVER]
knife azure vnet create (options)
knife azure vnet list (options)

** AZURERM COMMANDS **
knife azurerm server create (options)
knife azurerm server delete SERVER [SERVER] (options)
knife azurerm server list (options)
knife azurerm server show SERVER (options)

** BASE COMMANDS **
Usage: /bin/knife (options)

** BOOTSTRAP COMMANDS **
knife bootstrap [PROTOCOL://][USER@]FQDN (options)
knife bootstrap azure SERVER (options)
knife bootstrap azurerm SERVER (options)
Usage: /bin/knife (options)
knife bootstrap windows ssh FQDN (options)
knife bootstrap windows winrm FQDN (options)

** CLIENT COMMANDS **
knife client bulk delete REGEX (options)
knife client create CLIENTNAME (options)
knife client delete [CLIENT [CLIENT]] (options)
knife client edit CLIENT (options)
knife client key create CLIENT (options)
knife client key delete CLIENT KEYNAME (options)
knife client key edit CLIENT KEYNAME (options)
knife client key list CLIENT (options)
knife client key show CLIENT KEYNAME (options)
knife client list (options)
knife client reregister CLIENT (options)
knife client show CLIENT (options)

** COMMAND COMMANDS **
Usage: /bin/knife (options)

** CONFIG COMMANDS **
knife config get [OPTION...] (options)
Displays the value of Chef::Config[OPTION] (or all config values)
knife config get-profile
knife config list-profiles (options)
knife config use-profile PROFILE

** CONFIGURE COMMANDS **
knife configure (options)
knife configure client DIRECTORY

** COOKBOOK COMMANDS **
knife cookbook bulk delete REGEX (options)
knife cookbook delete COOKBOOK VERSION (options)
knife cookbook download COOKBOOK [VERSION] (options)
knife cookbook list (options)
knife cookbook metadata COOKBOOK (options)
knife cookbook metadata from file FILE (options)
knife cookbook show COOKBOOK [VERSION] [PART] [FILENAME] (options)
knife cookbook upload [COOKBOOKS...] (options)

** DATA BAG COMMANDS **
knife data bag create BAG [ITEM] (options)
knife data bag delete BAG [ITEM] (options)
knife data bag edit BAG ITEM (options)
knife data bag from file BAG FILE|FOLDER [FILE|FOLDER..] (options)
knife data bag list (options)
knife data bag show BAG [ITEM] (options)

** EC2 COMMANDS **
knife ec2 ami list (options)
knife ec2 eni list (options)
knife ec2 flavor list (options) [DEPRECATED]
knife ec2 securitygroup list (options)
knife ec2 server create (options)
knife ec2 server delete SERVER [SERVER] (options)
knife ec2 server list (options)
knife ec2 subnet list (options)
knife ec2 vpc list (options)

** ENVIRONMENT COMMANDS **
knife environment compare [ENVIRONMENT..] (options)
knife environment create ENVIRONMENT (options)
knife environment delete ENVIRONMENT (options)
knife environment edit ENVIRONMENT (options)
knife environment from file FILE [FILE..] (options)
knife environment list (options)
knife environment show ENVIRONMENT (options)

** EXEC COMMANDS **
knife exec [SCRIPT] (options)

** GOOGLE COMMANDS **
knife google disk create NAME --gce-disk-size N (options)
knife google disk delete NAME [NAME] (options)
knife google disk list
knife google image list
knife google project quotas
knife google region list
knife google region quotas
knife google server create NAME -m MACHINE_TYPE -I IMAGE (options)
knife google server delete INSTANCE_NAME [INSTANCE_NAME] (options)
knife google server list
knife google server show INSTANCE_NAME (options)
knife google zone list

** JOB COMMANDS **
knife job list
knife job output <job id> <node> [<node> ...]
knife job start <command> [<node> <node> ...]
knife job status <job id>

** KNIFE COMMANDS **
Usage: /bin/knife (options)

** NODE COMMANDS **
knife node bulk delete REGEX (options)
knife node create NODE (options)
knife node delete [NODE [NODE]] (options)
knife node edit NODE (options)
knife node environment set NODE ENVIRONMENT
knife node from file FILE (options)
knife node list (options)
knife node policy set NODE POLICY_GROUP POLICY_NAME (options)
knife node run_list add [NODE] [ENTRY [ENTRY]] (options)
knife node run_list remove [NODE] [ENTRY [ENTRY]] (options)
knife node run_list set NODE ENTRIES (options)
knife node show NODE (options)
knife node status [<node> <node> ...]

** PATH-BASED COMMANDS **
knife delete [PATTERN1 ... PATTERNn]
knife deps PATTERN1 [PATTERNn]
knife diff PATTERNS
knife download PATTERNS
knife edit [PATTERN1 ... PATTERNn]
knife list [-dfR1p] [PATTERN1 ... PATTERNn] (options)
knife show [PATTERN1 ... PATTERNn] (options)
knife upload PATTERNS (options)
knife xargs [COMMAND] (options)

** RAW COMMANDS **
knife raw REQUEST_PATH (options)

** RECIPE COMMANDS **
knife recipe list [PATTERN]

** REHASH COMMANDS **
knife rehash

** RESOURCE COMMANDS **
Usage: /bin/knife (options)

** ROLE COMMANDS **
knife role bulk delete REGEX (options)
knife role create ROLE (options)
knife role delete ROLE (options)
knife role edit ROLE (options)
knife role env_run_list add [ROLE] [ENVIRONMENT] [ENTRY [ENTRY]] (options)
knife role env_run_list clear [ROLE] [ENVIRONMENT] (options)
knife role env_run_list remove [ROLE] [ENVIRONMENT] [ENTRIES] (options)
knife role env_run_list replace [ROLE] [ENVIRONMENT] [OLD_ENTRY] [NEW_ENTRY] (options)
knife role env_run_list set [ROLE] [ENVIRONMENT] [ENTRIES] (optionss)
knife role from file FILE [FILE..] (options)
knife role list (options)
knife role run_list add [ROLE] [ENTRY [ENTRY]] (options)
knife role run_list clear [ROLE] (options)
knife role run_list remove [ROLE] [ENTRY] (options)
knife role run_list replace [ROLE] [OLD_ENTRY] [NEW_ENTRY] (options)
knife role run_list set [ROLE] [ENTRIES] (options)
knife role show ROLE (options)

** SEARCH COMMANDS **
knife search INDEX QUERY (options)

** SERVE COMMANDS **
knife serve (options)

** SERVER COMMANDS **
Usage: /bin/knife (options)
Usage: /bin/knife (options)
Usage: /bin/knife (options)
Usage: /bin/knife (options)

** SPORK COMMANDS **
knife spork bump COOKBOOK [major|minor|patch|manual]
knife spork check COOKBOOK (options)
knife spork data bag create BAG [ITEM] (options)
knife spork data bag delete BAG [ITEM] (options)
knife spork data bag edit BAG ITEM (options)
knife spork data bag from file BAG FILE|FOLDER [FILE|FOLDER..] (options)
knife spork delete [COOKBOOKS...] (options)
knife spork environment check ENVIRONMENT (options)
knife spork environment create ENVIRONMENT (options)
knife spork environment delete ENVIRONMENT (options)
knife spork environment edit ENVIRONMENT (options)
knife spork environment from file FILENAME (options)
knife spork info
knife spork node create NODE (options)
knife spork node delete NODE (options)
knife spork node edit NODE (options)
knife spork node from file FILE (options)
knife spork node run_list add [NODE] [ENTRY[,ENTRY]] (options)
knife spork node run_list add [NODE] [ENTRY[,ENTRY]] (options)
knife spork node run_list set NODE ENTRIES (options)
knife spork omni COOKBOOK (options)
knife spork promote ENVIRONMENT COOKBOOK (options)
knife spork role create ROLE (options)
knife spork role delete ROLENAME (options)
knife spork role edit ROLENAME (options)
knife spork role from file FILENAME (options)
knife spork upload [COOKBOOKS...] (options)
knife spork version

** SSH COMMANDS **
knife ssh QUERY COMMAND (options)

** SSL COMMANDS **
knife ssl check [URL] (options)
knife ssl fetch [URL] (options)

** STATUS COMMANDS **
knife status QUERY (options)

** SUPERMARKET COMMANDS **
knife supermarket download COOKBOOK [VERSION] (options)
knife supermarket install COOKBOOK [VERSION] (options)
knife supermarket list (options)
knife supermarket search QUERY (options)
knife supermarket share COOKBOOK [CATEGORY] (options)
knife supermarket show COOKBOOK [VERSION] (options)
knife supermarket unshare COOKBOOK

** TAG COMMANDS **
knife tag create NODE TAG ...
knife tag delete NODE TAG ...
knife tag list NODE

** TIDY COMMANDS **
knife tidy backup clean (options)
knife tidy notify (options)
knife tidy server clean (options)
knife tidy server report (options)

** USER COMMANDS **
knife user create USERNAME DISPLAY_NAME FIRST_NAME LAST_NAME EMAIL PASSWORD (options)
knife user delete USER (options)
knife user edit USER (options)
knife user key create USER (options)
knife user key delete USER KEYNAME (options)
knife user key edit USER KEYNAME (options)
knife user key list USER (options)
knife user key show USER KEYNAME (options)
knife user list (options)
knife user reregister USER (options)
knife user show USER (options)

** VAULT COMMANDS **
knife vault create VAULT ITEM VALUES (options)
knife vault delete VAULT ITEM (options)
knife vault download VAULT ITEM PATH (options)
knife vault edit VAULT ITEM (options)
knife vault isvault VAULT ITEM (options)
knife vault itemtype VAULT ITEM (options)
knife vault list (options)
knife vault refresh VAULT ITEM
knife vault remove VAULT ITEM VALUES (options)
knife vault rotate all keys
knife vault rotate keys VAULT ITEM (options)
knife vault show VAULT [ITEM] [VALUES] (options)
knife vault update VAULT ITEM VALUES (options)

** VSPHERE COMMANDS **
knife vsphere cluster list
knife vsphere cpu ratio [CLUSTER] [HOST]
knife vsphere customization list
knife vsphere datastore file
knife vsphere datastore list
knife vsphere datastore maxfree
knife vsphere datastorecluster list
knife vsphere datastorecluster maxfree
knife vsphere folder list
knife vsphere hosts list
knife vsphere pool list
knife vsphere pool query POOLNAME QUERY.  See "http://pubs.vmware.com/vi3/sdk/ReferenceGuide/vim.ComputeResource.html" for allowed QUERY values.
knife vsphere pool show POOLNAME QUERY.  See "http://pubs.vmware.com/vi3/sdk/ReferenceGuide/vim.ComputeResource.html" for allowed QUERY values.
knife vsphere template list
knife vsphere vlan create NAME VID
knife vsphere vlan list
knife vsphere vm cdrom VMNAME (options)
knife vsphere vm clone VMNAME (options)
knife vsphere vm config VMNAME PROPERTY VALUE (PROPERTY VALUE)...
          See "https://www.vmware.com/support/developer/converter-sdk/conv60_apireference/vim.vm.ConfigSpec.html"
          for allowed ATTRIBUTE values (any property of type xs:string is supported).
knife vsphere vm delete VMNAME (options)
knife vsphere vm disk extend VMNAME SIZE. Extends the disk of vm VMNAME to SIZE kilobytes.
knife vsphere vm disk list VMNAME
knife vsphere vm execute VMNAME COMMAND ARGS
knife vsphere vm find
knife vsphere vm list
knife vsphere vm markastemplate VMNAME
knife vsphere vm migrate VMNAME (options)
knife vsphere vm move VMNAME
knife vsphere vm net STATE VMNAME
knife vsphere vm network add VMNAME NETWORKNAME
knife vsphere vm network delete VMNAME NICNAME
knife vsphere vm network list VMNAME
knife vsphere vm network set VMNAME NETWORKNAME
knife vsphere vm property get VMNAME PROPERTY.  Gets a vApp Property on VMNAME.
knife vsphere vm property set VMNAME PROPERTY VALUE.  Sets a vApp Property on VMNAME.
knife vsphere vm show VMNAME QUERY.  See "http://pubs.vmware.com/vi3/sdk/ReferenceGuide/vim.VirtualMachine.html" for allowed QUERY values.
knife vsphere vm snapshot VMNAME (options)
knife vsphere vm state VMNAME (options)
knife vsphere vm toolsconfig VMNAME PROPERTY VALUE
          See "https://www.vmware.com/support/developer/vc-sdk/visdk25pubs/ReferenceGuide/vim.vm.ToolsConfigInfo.html"
          for available properties and types.
knife vsphere vm vmdk add VMNAME DISK_GB
knife vsphere vm vncset VMNAME
knife vsphere vm wait sysprep VMNAME (options)

** WINDOWS COMMANDS **
knife windows cert generate FILE_PATH (options)
knife windows cert install CERT [CERT] (options)
knife bootstrap windows winrm FQDN (options)
knife bootstrap windows ssh FQDN (options)
knife winrm QUERY COMMAND (options)
knife wsman test QUERY (options)
knife windows listener create (options)

** WINRM COMMANDS **
knife winrm QUERY COMMAND (options)

** WSMAN COMMANDS **
knife wsman test QUERY (options)
==================================

1 13.127.95.252
2 35.154.123.32
3 13.233.119.254
415.206.90.166
5 13.235.71.178
6 35.154.5.23
7 52.66.117.22
8 52.66.126.161
9 13.233.18.141
10 52.66.134.160
11 13.126.236.169
12 52.66.136.132
13 15.206.147.1
14 13.232.167.192
15 13.233.153.146
16 13.233.147.151
17 52.66.107.4
18 13.232.105.92
19 13.126.69.22
20 15.206.88.213
21 13.233.251.220
22 13.126.97.64
23 13.234.66.148
24 13.233.122.64
25 13.233.103.123

Workstation
35.154.48.196

Server
52.66.246.148
rajeshkumar
password123
