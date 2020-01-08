require './spec/spec_helper'
require "./lib/parser.rb"

describe Parser do
  it 'can return an array of webpages with most page views ordered from most pages views to less page views' do
    expected_result = [["about/2", 90], ["contact", 89], ["index", 82], ["about", 81], ["help_page/1", 80], ["home", 78]]
    expect(Parser.new.number_of_visits).to eq expected_result
  end

  it 'can return an array of webpages with most unique page views also ordered' do
    expected_result = [["index", 23], ["home", 23], ["help_page/1", 23], ["contact", 23], ["about/2", 22], ["about", 21]]
    expect(Parser.new.most_unique_page_views).to eq expected_result
  end
end
