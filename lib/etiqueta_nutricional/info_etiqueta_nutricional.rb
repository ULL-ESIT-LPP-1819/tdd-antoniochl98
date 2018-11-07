class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas, :hidratos, :azucar, :proteinas, :sal, :gr_monoinsaturadas, :gr_poliinsaturadas
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas="no_declarado",gr_poliinsaturadas="no_declarado")
		@nombre, @grasas, @gr_saturadas, @hidratos, @azucar, @proteinas, @sal, @gr_monoinsaturadas, @gr_poliinsaturadas=nombre, grasas, gr_saturadas, hidratos, azucar, proteinas, sal, gr_monoinsaturadas, gr_poliinsaturadas
	end
end
