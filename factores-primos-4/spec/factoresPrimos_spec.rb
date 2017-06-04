require 'rspec' 
require_relative '../model/factoresPrimos'

describe 'FactoresPrimos' do

	let(:factoresPrimos) { FactoresPrimos.new }
	
	begin
		it 'factores primos de 30 son 2, 3 y 5' do
			expect(factoresPrimos.factorizar("30")).to eq([2, 3, 5])
		end
		
		it 'factores primos de 360 son 2, 2, 2, 3, 3 y 5' do
			expect(factoresPrimos.factorizar("360")).to eq([2, 2, 2, 3, 3, 5])
		end
		
		it '1 no tiene factores primos' do
			expect(factoresPrimos.factorizar("1")).to eq([ ])
		end
		
		it 'Juan no es un numero valido, da una excepcion' do
			expect{factoresPrimos.factorizar("Juan")}.to raise_exception
		end
		
		it '-5 no tiene factores primos ya que es un numero negativo' do
			expect(factoresPrimos.factorizar("-5")).to eq([ ])
		end
	end
end