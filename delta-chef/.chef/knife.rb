# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chef_opscodetraining"
client_key               "#{current_dir}/chef_opscodetraining.pem"
chef_server_url          "https://manage.chef.io/organizations/ashishbdev"
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_path            ["#{current_dir}/../cookbooks"]
roles_path            	 ["#{current_dir}/../roles"]
ssl_verify_mode :verify_none
