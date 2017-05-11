actions :install
default_action :install
attribute :env_name, :kind_of => String, :required=> true
attribute :name_cookbook, :kind_of => String, :required=> true
attribute :databag_name, :kind_of => String, :required=> true
attribute :databag_item_name, :kind_of => String, :required=> true