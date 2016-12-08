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
    content_type :json

    create_name_array(params['text']).to_json
  end
end

# 404 page
not_found do
  erb :not_found
end