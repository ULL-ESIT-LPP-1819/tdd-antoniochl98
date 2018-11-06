class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas, :hidratos
	def initialize(nombre,grasas,gr_saturadas,hidratos)
		@nombre, @grasas, @gr_saturadas, @hidratos=nombre, grasas, gr_saturadas, hidratos
	end
end
