require 'open-uri'
require 'pry'

class DataCruncher
  def number_of_visits
    data = File.read('webserver.log')
    split_data = data.split("\n/") # split_data = array
    split_data[0] = split_data[0].sub('/', '')
    split_array = split_data.map { |line| line.split(' ') }
    container = Hash.new(0) # empty

    split_array.each do |item|
      container[item[0]] += 1
    end

    sorted_data = container.sort_by { |_k, v| v }.reverse

    # Number of page visits
    sorted_data.each do |k, v|
      puts "#{k} has #{v} visits"
    end
  end

  def most_unique_page_views
    # write some code
  end
end