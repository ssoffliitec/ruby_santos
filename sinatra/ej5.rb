require 'sinatra'

	arreglo = %w{ rambo ruido ruby }
	arreglo2 = %w{razon sazon calzon }

get '/ej5' do
	# RECORRE ARRAY Y EVALUA SI COMIENZA CON "R"
	def recorrer(a)
		ctrl =0
		res=[]
		largo_arreglo = a.length
		a.each do |item|
			item.downcase
			if item[0] == 'r'
				ctrl+=1
			end
		end
		if ctrl<largo_arreglo
			res.push "En el arreglo #{a}, no todas comienzan con r"
		else
			res.push "En el arreglo #{a}, todas comienzan con r"
		end
	end

	#LLAMADA A FUNCION PARA CADA ARRAY DADO
	recorrer(arreglo)
	recorrer(arreglo2)
	return "Evaluacion: #{res}"
end