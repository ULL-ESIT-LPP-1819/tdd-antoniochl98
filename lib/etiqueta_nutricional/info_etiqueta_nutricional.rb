class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas, :hidratos, :azucar, :proteinas, :sal
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal)
		@nombre, @grasas, @gr_saturadas, @hidratos, @azucar, @proteinas, @sal=nombre, grasas, gr_saturadas, hidratos, azucar, proteinas, sal
	end
end
