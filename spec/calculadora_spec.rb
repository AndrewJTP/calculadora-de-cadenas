require "./lib/calculadora_cadenas.rb"
RSpec.describe "calculadora de cadenas" do
    it "deberia devolver el numero 3 si le pasamos la cadena '3'" do
        expect(calCadena("3")).to eq 3
    end
    it "deberia devolver el numero 5 si le pasamos la cadena '5'" do
        expect(calCadena("5")).to eq 5
    end
    it "deberia devolver el numero 8 si le pasamos la cadena '5,3'" do
        expect(calCadena("5,3")).to eq 8
    end
end
