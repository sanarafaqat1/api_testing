require 'json'

class ParseJson

  attr_accessor :json_file
  # Initialise the read and parsing of the JSON file
  # When providing an argument to an initialise method means you must give class initialisation with the argument
  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_file['base']
  end

  def get_date_value
    @json_file['date']
  end

  def number_of_rate_keys
    @json_file['rates'].keys.count
  end

  def number_of_rate_values
    @json_file['rates'].values.count
  end

  def get_rates
    @json_file['rates']
  end
end
