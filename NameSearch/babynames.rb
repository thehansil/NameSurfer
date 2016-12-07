require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/namesD.db")

class NamesTable
  include DataMapper::Resource
  property :name, String,:key => true
  property :year1900, Integer
  property :year1910, Integer
  property :year1920, Integer
  property :year1930, Integer
  property :year1940, Integer
  property :year1950, Integer
  property :year1960, Integer
  property :year1970, Integer
  property :year1980, Integer
  property :year1990, Integer
  property :year2000, Integer

end

DataMapper.finalize()