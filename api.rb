require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'json'
require './models/country'
require './models/state'
require './models/city'
require './models/category'
require './models/user'

#item resources

def build_response(content)

  response = {}
  response['response'] = content
  response['meta'] = ""

  return response.to_json
  
end

# Country resources

get '/country/:countryid' do

	content_type 'application/json'

	country = Country.new
	return country.to_json()

end

get '/country/:countryid/list' do

  content_type 'application/json'
  list = []
  list[0] = Country.new
  list[1] = Country.new

  return list.to_json()

end

get '/country/:countryid/category/list' do

  # returns the full category three
  content_type 'application/json'
  list = []
  list[0] = Category.new
  list[1] = Category.new


  list[0].childs[0] = Category.new
  list[0].childs[0] = Category.new
  list[1].childs[0] = Category.new

  return list.to_json()

end

# Category

get '/category/:categoryid' do

  content_type 'application/json'
  return Category.new.to_json()

end

# State

get '/state/:countryid' do

  content_type 'application/json'

	state = State.new
	return build_response(state)

end

get '/country/:countryid/state/list' do

  content_type 'application/json'
  list = []
  list[0] = State.new
  list[1] = State.new

  return list.to_json()

end

# City

get '/city/:cityid' do

  content_type 'application/json'

	city = City.new
	return build_response(city)

end

get '/country/:countryid/state/:stateid/city/list' do

  content_type 'application/json'
  list = []
  list[0] = City.new
  list[1] = City.new

  return list.to_json()

end

## TODO see relationship with country/state
