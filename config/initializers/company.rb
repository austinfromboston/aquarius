if File.exist?( "#{RAILS_ROOT}/config/price_list.yml" )
  module ::CompanyConfig
    PRICE_LIST = YAML.load_file( "#{RAILS_ROOT}/config/price_list.yml" )
  end
end
