#
# Cookbook Name:: typo_cookbook
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
node['typo_cookbook']['cookbook_name_linode'].each do |cookbook|
	Chef::Log.info("Name of cookbook is #{cookbook}")
end
=end
=begin
typo_cookbook"dd_pcp_int"do
env_name node.chef_environment
name_cookbook 'dd_pcp_int'
databag_name 'weblogic_typo_check'
databag_item_name 'new_global'
end
=end

=begin
Chef::Log.info("the value of domain_name = #{databag_obj['domain_name']}")
begin
node['typo_cookbook']['appname'].each do |appname|
	Helpers::string_compair(appname,node['typo_cookbook']['appname_cmpr'])
end
rescue StringNotFoundException => ex
	Chef::Application.fatal!("#{ex.message}")
end
=end
::Chef::Recipe.send(:include, UsefulMethods)
begin   
	databag_obj = Helpers::get_database_obj('weblogic_typo_check','new_global')
	string_compair(node['dd_pcp_int']['appname'],databag_obj['dd_pcp_int']['ear_file'])
	string_compair(node['dd_pcp_int']['libraryname'] ,databag_obj['dd_pcp_int']['library'])
rescue StringNotFoundException => e 
	Chef::Log.info(e.message) 
end
