require 'sinatra'
require 'sinatra/reloader'
require './guessing_sequence'

number = rand(100)

get '/' do
  new_guess = GuessingSequence.new(params[:guess], number)
  erb :index, :locals => {:new_guess => new_guess}
end
