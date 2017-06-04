class FormatoPrimos

	def darFormato(array)
		arrayConFormato = ""
	
		array.each do |x|
			arrayConFormato += x.to_s + ","
		end
		return arrayConFormato
	end
end
	
	