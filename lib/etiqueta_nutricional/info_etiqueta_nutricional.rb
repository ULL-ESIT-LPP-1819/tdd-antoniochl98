class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas, :hidratos, :azucar, :proteinas
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar, proteinas)
		@nombre, @grasas, @gr_saturadas, @hidratos, @azucar, @proteinas=nombre, grasas, gr_saturadas, hidratos, azucar, proteinas
	end
end
