class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas, :hidratos, :azucar, :proteinas, :sal, :gr_monoinsaturadas
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas="no_declarado")
		@nombre, @grasas, @gr_saturadas, @hidratos, @azucar, @proteinas, @sal, @gr_monoinsaturadas=nombre, grasas, gr_saturadas, hidratos, azucar, proteinas, sal, gr_monoinsaturadas
	end
end
