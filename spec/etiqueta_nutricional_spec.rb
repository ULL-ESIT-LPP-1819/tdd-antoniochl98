RSpec.describe EtiquetaNutricional do
  it "has a version number" do
    expect(EtiquetaNutricional::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

RSpec.describe InfoEtiquetaNutricional do
	before :each do
		@x = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0)
		@y = InfoEtiquetaNutricional.new("nombre_2",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
	end
	describe "# Obteniendo los datos de la etiqueta" do
		it "Se obtiene el nombre del producto" do
			expect("nombre").to eq(@x.nombre)
		end

		it "Se obtiene las grasas del producto" do
			expect(80.2).to eq(@x.grasas)
		end

		it "Se obtiene las grasas saturadas del producto" do
			expect(13.8).to eq(@x.gr_saturadas)
		end

		it "Se obtiene los hidratos de carbono del producto" do
			expect(0.5).to eq(@x.hidratos)
		end

		it "Se obtiene los azúcares del producto" do
			expect(0).to eq(@x.azucar)
		end
		
		it "Se obtiene las proteínas del producto" do
			expect(0.8).to eq(@x.proteinas)
		end
		
		it "Se obtiene la sal del producto" do
			expect(0).to eq(@x.sal)
		end

		it "Se obtiene las grasas monoinsaturadas del producto" do
			expect("no_declarado").to eq (@x.gr_monoinsaturadas)
			expect(28.5).to eq(@y.gr_monoinsaturadas)
		end

		it "Se obtiene las grasas poliinsaturadas del producto" do
			expect("no_declarado").to eq (@x.gr_poliinsaturadas)
			expect(34.6).to eq(@y.gr_poliinsaturadas)
		end

		it "Se obtiene los polialcoholes del producto" do
			expect("no_declarado").to eq (@x.polialcoholes)
			expect(0).to eq(@y.polialcoholes)
		end

		it "Se obtiene el almidón del producto" do
			expect("no_declarado").to eq (@x.almidon)
			expect(0).to eq(@y.almidon)
		end

		it "Se obtiene la fibra alimentaria del producto" do
			expect("no_declarado").to eq (@x.fbr_alim)
			expect(4.3).to eq(@y.fbr_alim)
		end

		it "Se obtiene las vitaminas y minerales del producto" do
			expect(@x.vitaminas).to eq ("no_declarado")
			expect(@y.vitaminas).to eq(0.005)
		end

		it "Se obtiene el valor energético en KJ del producto" do
			expect(@x.val_ener_kj).to eq (2989.5)
			expect(@y.val_ener_kj).to eq(3023.9)
		end

		
		it "Se obtiene el valor energético en Kcal del producto" do
			expect(@x.val_ener_kcal).to eq (727)
			expect(@y.val_ener_kcal).to eq(735.6)
		end

		it "Se obtiene las IR del producto" do
			expect(@x.IR).to eq ([35.59,114.57,69,0.19,0,1.6,0])
		end

		it "Se obtiene la cantidad de porciones" do
			expect(@y.porcion).to eq(6)
		end

		it "Se obtiene los gramos de cada porcion" do
			expect(@y.g_porcion).to eq(5)	
		end

		it "Se obtienen todos los datos de la etiqueta" do
			expect(@y.to_s).to eq("Por 100g de producto: \nvalor energético: 3023.9KJ\nvalor energético: 735.6Kcal\ngrasas: 80.2\ngrasas saturadas: 13.8\nhidratos de carbono: 0.5\nazúcares: 0\nproteínas: 0.8\nsal: 0\ngrasas monoinsaturadas: 28.5\ngrasas poliinsaturadas: 34.6\npolialcoholes: 0\nalmidon: 0\nfibra alimentaria: 4.3\nvitaminas: 0.005\n\n\nPor cada porcion de 5g: \nvalor energético: 604.78KJ\nvalor energético: 147.12Kcal\ngrasas: 16.04\ngrasas saturadas: 2.7600000000000002\nhidratos de carbono: 0.1\nazúcares: 0\nproteínas: 0.16\nsal: 0\ngrasas monoinsaturadas: 5.7\ngrasas poliinsaturadas: 6.92\npolialcoholes: 0\nalmidon: 0\nfibra alimentaria: 0.86\nvitaminas: 0.001\n")
		end
	end

	describe "#Probando funcionalidad de la lista" do
		it "Se comprueba la funcionalidad de la lista" do
			a = InfoEtiquetaNutricional.new("nombre_3",80.2,13.8,0.5,0,0.8,50,28.5,34.6,0,0,4.3,0.005,6,5)
			b = InfoEtiquetaNutricional.new("nombre_4",80.2,13.8,0.5,0,0.8,10,28.5,34.6,0,0,4.3,0.005,6,5)
			c = InfoEtiquetaNutricional.new("nombre_5",80.2,13.8,0.5,0,0.8,4,28.5,34.6,0,0,4.3,0.005,6,5)
			list=Lista.new
			list.push_head(@x)
			expect(list.head.value).to eq(@x)
			expect(list.tail.value).to eq(@x)
			list.push_tail(@y)
			expect(list.head.value).to eq(@x)
			expect(list.tail.value).to eq(@y)
			expect(list.size).to eq(2)
			list.pop_tail
			expect(list.head.value).to eq(@x)
			expect(list.tail.value).to eq(@x)
			expect(list.size).to eq(1)
			list.pop_tail
			expect(list.empty).to eq(true)
		end
		
		it "Se clasifican los valores según su sal" do
			a = InfoEtiquetaNutricional.new("nombre_3",80.2,13.8,0.5,0,0.8,50,28.5,34.6,0,0,4.3,0.005,6,5)
			b = InfoEtiquetaNutricional.new("nombre_4",80.2,13.8,0.5,0,0.8,10,28.5,34.6,0,0,4.3,0.005,6,5)
			c = InfoEtiquetaNutricional.new("nombre_5",80.2,13.8,0.5,0,0.8,4,28.5,34.6,0,0,4.3,0.005,6,5)
			list=Lista.new
			
			list.push_tail(@x)
			list.push_tail(@y)
			list.push_tail(a)
			list.push_tail(b)
			list.push_tail(c)

			v_clasificado=list.clasifica(6)
			expect(v_clasificado[0][0].value).to eq(@x)
			expect(v_clasificado[0][1].value).to eq(@y)
			expect(v_clasificado[0][2].value).to eq(c)
			expect(v_clasificado[1][0].value).to eq(a)
			expect(v_clasificado[1][1].value).to eq(b)
		end

	end
		

end
