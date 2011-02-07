require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  @page = 'index'
  erb :index
end

get '/coursework' do
  @page = 'coursework'
  erb :coursework
end

get '/resume' do
  @page = 'resume'
  erb :resume
end

get '/work' do
  @page = 'work'
  erb :work
end