class FileNotFoundException < Exception
end

class Chef::Provider::Helpers
  def self.nodeenv
    return node.chef_environment
  end

  def self.get_database_obj(data_bag,data_bag_item )
    return Chef::DataBagItem.load(data_bag, data_bag_item)
  end
  
  def self.rmb_file_exist(filename)
	raise FileNotFoundException.new("#{filename} File not Found.") unless
	File.exists?(filename)
  end


  def self.string_compair(string,search_array)
  raise StringNotFoundException.new("#{string} is not found in array.") unless search_array.include?string
  end
  def self.test_method1
  Chef::Log.info("I am in UsefulMethods")
  end
end

module UsefulMethods
  class StringNotFoundException < Exception
  end
  def test_method
  Chef::Log.info("I am in UsefulMethods")
  end
  def string_compair(string,search_array)
  unless search_array.include?string
  raise StringNotFoundException.new("#{string} is not found in array.")
else
  Chef::Log.info("value of #{string} is verfied.")
  end
end