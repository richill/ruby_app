require './spec/spec_helper'
require "./lib/parser.rb"

describe DataCruncher do
  it 'can return an array of webpages with most page views ordered from most pages views to less page views' do
    expected_result = [["about/2", 90], ["contact", 89], ["index", 82], ["about", 81], ["help_page/1", 80], ["home", 78]]
    expect(DataCruncher.new.number_of_visits).to eq expected_result
  end

  it 'can return an array of webpages with most unique page views also ordered' do
  end
end
