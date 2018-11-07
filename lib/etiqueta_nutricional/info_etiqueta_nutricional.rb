class InfoEtiquetaNutricional
	attr_reader :nombre,:grasas,:gr_saturadas,:hidratos,:azucar,:proteinas,:sal,:gr_monoinsaturadas,:gr_poliinsaturadas,:polialcoholes,:almidon,:fbr_alim,:vitaminas,:porcion,:g_porcion
	def initialize(nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas="no_declarado",gr_poliinsaturadas="no_declarado",polialcoholes="no_declarado",almidon="no_declarado",fbr_alim="no_declarado",vitaminas="no_declarado",porcion="no_declarado",g_porcion="no_declarado")
		@nombre,@grasas,@gr_saturadas,@hidratos,@azucar,@proteinas,@sal,@gr_monoinsaturadas,@gr_poliinsaturadas,@polialcoholes,@almidon,@fbr_alim,@vitaminas,@porcion,@g_porcion=nombre,grasas,gr_saturadas,hidratos,azucar,proteinas,sal,gr_monoinsaturadas,gr_poliinsaturadas,polialcoholes,almidon,fbr_alim,vitaminas,porcion,g_porcion
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

	def IR()
		v1=[self.val_ener_kj,@grasas,@gr_saturadas,@hidratos,@azucar,@proteinas,@sal]
		v2=[8400,70,20,260,90,50,6]
		v3=[]
		i=0
		while i<7 do
			v3.push((v1[i]*100/v2[i]).round(2))
			i+=1
		end
		v3
	end

          

end
