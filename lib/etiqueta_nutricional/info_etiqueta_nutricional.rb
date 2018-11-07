class InfoEtiquetaNutricional
	attr_reader :nombre,:grasas,:gr_saturadas,:hidratos,:azucar,:proteinas,:sal,:gr_monoinsaturadas,:gr_poliinsaturadas,:polialcoholes,:almidon,:fbr_alim,:vitaminas
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas="no_declarado",gr_poliinsaturadas="no_declarado",polialcoholes="no_declarado",almidon="no_declarado",fbr_alim="no_declarado",vitaminas="no_declarado")
		@nombre,@grasas,@gr_saturadas,@hidratos,@azucar,@proteinas,@sal,@gr_monoinsaturadas,@gr_poliinsaturadas,@polialcoholes,@almidon,@fbr_alim,@vitaminas=nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas,gr_poliinsaturadas,polialcoholes,almidon,fbr_alim,vitaminas
	end
end
