class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas, :hidratos, :azucar
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar)
		@nombre, @grasas, @gr_saturadas, @hidratos, @azucar=nombre, grasas, gr_saturadas, hidratos, azucar
	end
end
