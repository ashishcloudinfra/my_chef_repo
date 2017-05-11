::Chef::Provider.send(:include, UsefulMethods)
action :install do
	Chef::Log.info("#{new_resource.env_name}")
	Chef::Log.info("#{new_resource.name_cookbook}")
	Chef::Log.info("#{new_resource.databag_name}")
	Chef::Log.info("#{new_resource.databag_item_name}")
	begin
	databag_obj = Helpers::get_database_obj(new_resource.databag_name,new_resource.databag_item_name)
	string_compair(node['typo_cookbook']['appname'],databag_obj[new_resource.env_name][new_resource.name_cookbook]['ear_file'])
	string_compair(node['typo_cookbook']['libraryname'] ,databag_obj[new_resource.env_name][new_resource.name_cookbook]['library'])
	rescue Exception => e 
	Chef::Log.info(e.message) 
    #Chef::Log.info(e.backtrace.inspect.join("\n"))
	end
end
