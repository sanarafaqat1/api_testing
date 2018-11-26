require 'httparty'
require 'json'

class Postcodeio
  include HTTParty
  attr_accessor :single_postcode_result, :multiple_postcodes_result
  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_result = self.class.get("/postcodes/#{postcode}")
    puts JSON.parse(@single_postcode_result.body)
    # p @single_postcode_result
  end
  def get_multiple_postcode
    @multiple_postcodes_result = self.class.post('/postcodes /', body: {"postcodes": ["PR3 0SG", "M45 6GN", "EX165BL"]})
    puts JSON.parse(@multiple_postcodes_result.body)
  end
end
single = Postcodeio.new
single.get_multiple_postcode
