class ComponentLoader
  attr_accessor :import_list
  attr_accessor :loader_list

  def initialize(list, sufix='', instance_parameters=nil)
    self.import_list = ""
    self.loader_list = ""
    list.each do |el|
      import_list << "import #{el}#{sufix} from '#{sufix.downcase.pluralize}/#{el.underscore}'\n"
      loader_list << "#{el}#{sufix}: #{el}#{sufix}(#{instance_parameters}),\n"
    end
  end

  def get_import_list
    self.import_list
  end

  def get_loader_list
    self.loader_list
  end
end
