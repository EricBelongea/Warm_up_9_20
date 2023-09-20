require 'csv'
require 'pry'

class Name
  attr_reader :year, :bio_gender, :ethnicity, :name, :count, :rank
  @@filename = './data/popular_baby_names.csv'

  def initialize(data)
    @year = 
    @bio_gender = 
    @ethnicity = 
    @name = 
    @count = 
    @rank = 
  end

  def self.find_by_name(name)
    data = CSV.read(@@filename, headers: true, header_converters: :symbol)

    # require 'pry'; binding.pry
    # new code goes here
    result = data.select do |row|
      row[:childsfirstname] == name
      new(data[:name])
    end
    result
  end
end