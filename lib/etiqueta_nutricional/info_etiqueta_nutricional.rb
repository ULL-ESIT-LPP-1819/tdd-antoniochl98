class InfoEtiquetaNutricional
	attr_reader :nombre,:grasas,:gr_saturadas,:hidratos,:azucar,:proteinas,:sal,:gr_monoinsaturadas,:gr_poliinsaturadas,:polialcoholes,:almidon,:fbr_alim,:vitaminas
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas="no_declarado",gr_poliinsaturadas="no_declarado",polialcoholes="no_declarado",almidon="no_declarado",fbr_alim="no_declarado",vitaminas="no_declarado")
		@nombre,@grasas,@gr_saturadas,@hidratos,@azucar,@proteinas,@sal,@gr_monoinsaturadas,@gr_poliinsaturadas,@polialcoholes,@almidon,@fbr_alim,@vitaminas=nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas,gr_poliinsaturadas,polialcoholes,almidon,fbr_alim,vitaminas
	end
	def val_ener_kj()
		v1=[@grasas,@hidratos,@proteinas,@sal,@fbr_alim]
		v2=[37,17,17,25,8]
		c=0
		i=0
		while i<5 do
			if v1[i]!="no_declarado" then
				c+=(v1[i]*v2[i])
			end
			i+=1
		end
		c.round(2)
	end

	def val_ener_kcal()
		v1=[@grasas,@hidratos,@proteinas,@sal,@fbr_alim]
		v2=[9,4,4,6,2]
		c=0
		i=0
		while i<5 do
			if v1[i]!="no_declarado" then
				c+=(v1[i]*v2[i])
			end
			i+=1
		end
		c.round(2)
	end
end
