class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas, :hidratos, :azucar, :proteinas, :sal, :gr_monoinsaturadas, :gr_poliinsaturadas, :polialcoholes
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas="no_declarado",gr_poliinsaturadas="no_declarado",polialcoholes="no_declarado")
		@nombre, @grasas, @gr_saturadas, @hidratos, @azucar, @proteinas, @sal, @gr_monoinsaturadas, @gr_poliinsaturadas,@polialcoholes=nombre, grasas, gr_saturadas, hidratos, azucar, proteinas, sal, gr_monoinsaturadas, gr_poliinsaturadas, polialcoholes
	end
end
