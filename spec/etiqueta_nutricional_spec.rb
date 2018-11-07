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
			y = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0,28.5)
			expect(28.5).to eq(y.gr_monoinsaturadas)
		end

		it "Se obtiene las grasas poliinsaturadas del producto" do
			expect("no_declarado").to eq (@x.gr_poliinsaturadas)
			y = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0,28.5,34.6)
			expect(34.6).to eq(y.gr_poliinsaturadas)
		end

		it "Se obtiene los polialcoholes del producto" do
			expect("no_declarado").to eq (@x.polialcoholes)
			y = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0)
			expect(0).to eq(y.polialcoholes)
		end

		it "Se obtiene el almidón del producto" do
			expect("no_declarado").to eq (@x.almidon)
			y = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0)
			expect(0).to eq(y.almidon)
		end

		it "Se obtiene la fibra alimentaria del producto" do
			expect("no_declarado").to eq (@x.fbr_alim)
			y = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3)
			expect(4.3).to eq(y.fbr_alim)
		end

		it "Se obtiene las vitaminas del producto" do
			expect(@x.vitaminas).to eq ("no_declarado")
			y = InfoEtiquetaNutricional.new("nombre",80.2,13.8,0.5,0,0.8,0,28.5,34.6,0,0,4.3,0.5)
			expect(y.vitamina).to eq(0.5)
		end

	end
end
