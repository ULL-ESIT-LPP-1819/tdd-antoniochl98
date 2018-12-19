
require "etiqueta_nutricional/info_etiqueta_nutricional"

class Menu
	include Comparable, Enumerable
	attr_reader :menu

	def initialize(vec)
		@menu=vec
	end

	def valor_kcal()
		sum=0
                @menu.each{ |x| sum=sum+x.val_ener_kcal()}
		sum
	end

	def <=>(other)
		return nil unless other.instance_of?Menu
		valor_kcal<=>other.valor_kcal
	end
end
	
