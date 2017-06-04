class FactoresPrimos

	def factorizar(numero)
		valor = numero.to_i
		factores = Array.new

		if valor.to_s == numero
			factor = 2
			while factor <= valor do
				if valor % factor == 0
					factores << factor
					valor /= factor
					factor = 1
				end
				factor += 1
			end
			return factores
		end
		
		raise Exception, "El parametro no es un valor numerico."
	end
end	