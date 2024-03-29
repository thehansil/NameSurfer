require 'sinatra'
require './babynames'
require './name-helper'
require 'csv'
require 'dm-core'
require 'dm-migrations'
require 'json'

DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
  erb :home
end

get '/name' do
  if params['text']
    name = params['text'].gsub(/[^a-zA-Z]/,'')
    content_type :json

    create_name_array(name).to_json
  end
end

# 404 page
not_found do
  erb :not_found
end