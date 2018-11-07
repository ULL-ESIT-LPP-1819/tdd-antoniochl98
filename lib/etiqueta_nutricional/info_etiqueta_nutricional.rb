class InfoEtiquetaNutricional
	attr_reader :nombre,:grasas,:gr_saturadas,:hidratos,:azucar,:proteinas,:sal,:gr_monoinsaturadas,:gr_poliinsaturadas,:polialcoholes,:almidon,:fbr_alim
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas="no_declarado",gr_poliinsaturadas="no_declarado",polialcoholes="no_declarado",almidon="no_declarado",fbr_alim="no_declarado")
		@nombre,@grasas,@gr_saturadas,@hidratos,@azucar,@proteinas,@sal,@gr_monoinsaturadas,@gr_poliinsaturadas,@polialcoholes,@almidon,@fbr_alim=nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas,gr_poliinsaturadas,polialcoholes,almidon,fbr_alim
	end
end
