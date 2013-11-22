require 'dm-core'
require 'dm-migrations'

class Usuario
  include DataMapper::Resource
  property :id, Serial
  property :username, String
  property :ganadas, Integer
  property :perdidas, Integer
  property :empatadas, Integer
  property :jugadas, Integer
end

DataMapper.finalize

get '/usuarios' do
  @usuarios = Usuario.all
  haml :usuarios
end