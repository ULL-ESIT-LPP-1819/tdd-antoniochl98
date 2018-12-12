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

	describe "#Pruebas de personas y pacientes" do
		
		it "Se comprueba la jerarquía de clases y el correcto almacenamiento de datos" do

			datos = DatosSalud.new(1.75,65.2,20,'H',70.0,80.0)
			p1=Persona.new("Pepe")
			p2=Paciente.new("Juan")
			p3=Paciente.new("Pipo",datos)
			expect("#{p1.class}").to eq("Persona")
			expect("#{p2.class}").to eq("Paciente")
			expect("#{p2.nombre}").to eq("Juan")
			expect(p2.tratamiento).to eq(false)
			expect("#{p2.class.superclass}").to eq("Persona")
			expect("#{p3.class}").to eq("Paciente")
			expect(p3.tratamiento).to eq(true)
			expect("#{p3.class.superclass}").to eq("Persona")
		end

		it "Se clasifica a los pacientes según el imc" do
			datos1 = DatosSalud.new(1,18,20,'H',70.0,80.0)
			datos2 = DatosSalud.new(1,22,20,'H',70.0,80.0)
			datos3 = DatosSalud.new(1,27,20,'H',70.0,80.0)
			datos4 = DatosSalud.new(1,32,20,'H',70.0,80.0)
			datos5 = DatosSalud.new(1,37,20,'H',70.0,80.0)
			datos6 = DatosSalud.new(1,41,20,'H',70.0,80.0)
			p1=Paciente.new("Pipo",datos1)
			p2=Paciente.new("Pipo",datos2)
			p3=Paciente.new("Pipo",datos3)
			p4=Paciente.new("Pipo",datos4)
			p5=Paciente.new("Pipo",datos5)
			p6=Paciente.new("Pipo",datos6)
			list=Lista.new
			list.push_tail(p1)
			list.push_tail(p2)
			list.push_tail(p3)
			list.push_tail(p4)
			list.push_tail(p5)
			list.push_tail(p6)
			v2=["Bajo","Adecuado","Sobrepeso","Obesidad_1","Obesidad_2","Obesidad_3"]
			v1=[p1,p2,p3,p4,p5,p6]
			aux=list.head
			i=0
			while !aux.nil? do
				expect(v1[i].clas_imc).to eq(v2[i])
				aux=aux.next
				i+=1
			end

		end

		it "to_s" do

			datos1 = DatosSalud.new(1,18,20,'H',70.0,80.0)
			p1=Paciente.new("Pipo",datos1)
			expect(p1.to_s).to eq("Nombre: Pipo\ntalla= 1\npeso= 18\nedad= 20\nsexo= H\ncintura= 70.0\ncadera= 80.0\nimc= 18\nporcentaje de grasa= 9.999999999999998%\nRelación Cintura/Cadera= 0.875\n")
		end
		
	end

	describe "#Pruebas comparacion" do
		
		it "comparable de et_nutricional" do
			x = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0)
			y = InfoEtiquetaNutricional.new("nombre_2",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
			expect(x<y).to eq(true)
			expect(x>y).to eq(false)
			expect(x==y).to eq(false)

		end

		it "comparable datos salud" do
			datos1 = DatosSalud.new(1,18,20,'H',70.0,80.0)
			datos2 = DatosSalud.new(1,22,20,'H',70.0,80.0)
			expect(datos1<datos2).to eq(true)
			expect(datos2>datos1).to eq(true)
			expect(datos1==datos2).to eq(false)
		
		end

	end

	describe "#Pruebas enumerable" do
	       it "DatosSalud" do 
			d1 = DatosSalud.new(1,18,20,'H',70.0,80.0)
			d2 = DatosSalud.new(1,22,20,'H',70.0,80.0)
			d3 = DatosSalud.new(1,27,20,'H',70.0,80.0)
			d4 = DatosSalud.new(1,32,20,'H',70.0,80.0)
			d5 = DatosSalud.new(1,37,20,'H',70.0,80.0)
			d6 = DatosSalud.new(1,41,20,'H',70.0,80.0)
			list=Lista.new
			list.push_tail(d3)
			list.push_tail(d5)
			list.push_tail(d2)
			list.push_tail(d6)
			list.push_tail(d4)
			list.push_tail(d1)

			expect(list.collect{|x| x.imc}).to eq([27, 37, 22, 41, 32, 18])
			expect(list.select{|x| x.imc<30}).to eq([d3,d2,d1])
			expect(list.max).to eq(d6)
			expect(list.min).to eq(d1)
			expect(list.sort).to eq([d1,d2,d3,d4,d5,d6])

	       end
	       it "EtiqutaNutricional" do 
			d1 = DatosSalud.new(1,18,20,'H',70.0,80.0)
			d2 = DatosSalud.new(1,22,20,'H',70.0,80.0)
			d3 = DatosSalud.new(1,27,20,'H',70.0,80.0)
			d4 = DatosSalud.new(1,32,20,'H',70.0,80.0)
			d5 = DatosSalud.new(1,37,20,'H',70.0,80.0)
			d6 = DatosSalud.new(1,41,20,'H',70.0,80.0)
			list=Lista.new
			list.push_tail(d3)
			list.push_tail(d5)
			list.push_tail(d2)
			list.push_tail(d6)
			list.push_tail(d4)
			list.push_tail(d1)

			expect(list.collect{|x| x.imc}).to eq([27, 37, 22, 41, 32, 18])
			expect(list.select{|x| x.imc<30}).to eq([d3,d2,d1])
			expect(list.max).to eq(d6)
			expect(list.min).to eq(d1)
			expect(list.sort).to eq([d1,d2,d3,d4,d5,d6])

	       end	       
	end

	describe "#Pruebas menús" do
		
		it "Prueba de métodos" do
			prod1 = InfoEtiquetaNutricional.new("nombre_1",75,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
			prod2 = InfoEtiquetaNutricional.new("nombre_2",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
			prod3 = InfoEtiquetaNutricional.new("nombre_3",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
			prod4 = InfoEtiquetaNutricional.new("nombre_4",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
			prod5 = InfoEtiquetaNutricional.new("nombre_5",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
			prod6 = InfoEtiquetaNutricional.new("nombre_6",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.005,6,5)
			@menu1=[prod1,prod2,prod3,prod4]
			datos1 = DatosSalud.new(170,65,20,'H',70.0,80.0)
                        datos2 = DatosSalud.new(1,22,20,'H',70.0,80.0)
                        datos3 = DatosSalud.new(1,27,20,'H',70.0,80.0)
                        datos4 = DatosSalud.new(1,32,20,'H',70.0,80.0)
                        datos5 = DatosSalud.new(1,37,20,'H',70.0,80.0)
                        datos6 = DatosSalud.new(1,41,20,'H',70.0,80.0)
                        @p1=Paciente.new("Pipo",datos1)
                        @p2=Paciente.new("Pipo",datos2)
                        @p3=Paciente.new("Pipo",datos3)
                        @p4=Paciente.new("Pipo",datos4)
                        @p5=Paciente.new("Pipo",datos5)
                        @p6=Paciente.new("Pipo",datos6)
			@pacients=[@p1,@p2,@p3,@p4,@p5,@p6]
		
			sum=0
			@menu1.collect{ |x| sum=sum+x.val_ener_kcal()}
			v=@pacients.select{ |x| ((0.9*x.gasto_ener_total()) <=sum && sum<=(1.1*x.gasto_ener_total()))}
			expect(v.size()).to eq(0)
		end
	end
end
