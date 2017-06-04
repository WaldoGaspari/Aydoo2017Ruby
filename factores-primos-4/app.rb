require 'sinatra'
require_relative 'model/factoresPrimos'
require_relative 'model/formatoPrimos'

factores_primos = FactoresPrimos.new
formato_primos = FormatoPrimos.new

get '/primos' do
	begin
		factores = factores_primos.factorizar(params['x']).reverse
		factoresConFormato = formato_primos.darFormato(factores)
		"#{factoresConFormato}"
	rescue Exception
		status 400
		"400 Bad Request"
	end
end 

post '/primos' do
	begin
		factores = factores_primos.factorizar(params['x'])
		factoresConFormato = formato_primos.darFormato(factores)
		"#{factoresConFormato}"
	rescue Exception
		status 400
		"400 Bad Request"
	end
end
