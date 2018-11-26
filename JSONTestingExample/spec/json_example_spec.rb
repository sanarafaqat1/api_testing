require 'spec_helper'

describe ParseJson do

  before(:each) do
    @file = ParseJson.new('json_exchange_rates.json')
  end

  it 'Should be a Hash' do
    expect(@file.json_file).to be_a_kind_of(Hash)
  end

  it "should contain the base as EUR" do
    expect(@file.get_base_value).to eq "EUR"
  end

  it "Should have a date value as a string" do
    expect(@file.get_date_value).to be_a_kind_of(String)
  end


  it "should countain 31 rates" do
    expect(@file.number_of_rate_keys).to eq 31
    expect(@file.number_of_rate_values).to eq 31
  end

  it "should all rates should be Floats" do
    @file.get_rates.each_value {|value| expect(value).to be_a_kind_of Float}
  end

end