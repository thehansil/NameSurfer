require 'sinatra'
require './babynames'
require 'csv'


get '/' do
  erb :home
end