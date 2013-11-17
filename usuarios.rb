require 'dm-core'
require 'dm-migrations'

class Usario
  include DataMapper::Resource
  property :id, Serial
  property :username, String
  property :ganadas, Integer
  property :perdidas, Integer
  property :jugadas, Integer
end

DataMapper.finalize

get '/usuarios' do
   @usuarios = Usario.all
   haml :usuarios
end