require "./lib/calculadora_cadenas.rb"
RSpec.describe "calculadora de cadenas" do
    it "deberia devolver el numero 3 si le pasamos la cadena '3'" do
        expect(sumar("3")).to eq 3
    end
    it "deberia devolver el numero 5 si le pasamos la cadena '5'" do
        expect(sumar("5")).to eq 5
    end
    it "deberia devolver el numero 8 si le pasamos la cadena '5,3'" do
        expect(sumar("5,3")).to eq 8
    end
    it "deberia devolver el numero 10 si le pasamos la cadena '5,3,2'" do
        expect(sumar("5,3,2")).to eq 10
    end
    it "deberia devolver el numero 15 si le pasamos la cadena '5 7,3'" do
        expect(sumar("5 7,3")).to eq 15
    end
    it "deberia devolver el numero 17 si le pasamos la cadena '//[;]\n 6;7;4'" do
        expect(sumar("//[;]\n6;7;4")).to eq 17
    end
    it "deberia devolver el numero 15 si le pasamos la cadena '//[***][%]\n8***3%4'" do
        expect(sumar("//[***][%]\n8***3%4")).to eq 15
    end
    it "deberia devolver el numero 17 si le pasamos la cadena '//[**][%][&&]\n8&&3%4**2'" do
        expect(sumar("//[**][%][&&]\n8&&3%4**2")).to eq 17
    end
    it "deberia devolver el numero 17 si le pasamos la cadena '//[**][%][&&]\n8&&3%4**2**1001'" do
        expect(sumar("//[**][%][&&]\n8&&3%4**2**1001")).to eq 17
    end   
    
end
