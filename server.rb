require 'sinatra'
require 'sinatra/reloader'

get "/" do
  File.read("./views/index.html")
end
