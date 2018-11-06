class InfoEtiquetaNutricional
	attr_reader :nombre, :grasas, :gr_saturadas
	def initialize(nombre,grasas,gr_saturadas)
		@nombre, @grasas, @gr_saturadas=nombre, grasas, gr_saturadas
	end
end
