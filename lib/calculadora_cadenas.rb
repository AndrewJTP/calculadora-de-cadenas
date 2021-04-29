def sumar(cadena_numeros)
    if (existen_delimitadores(cadena_numeros))  
        delimitadores=obtener_delimitadores(cadena_numeros)
        numeros=obtener_numeros(cadena_numeros, delimitadores)
    else
        numeros=cadena_numeros.split(/[,\s]/)
    end
    numerosInt=numeros.map{|i| i.to_i if i.to_i<1001 }.compact
    suma=numerosInt.sum()
    return suma
    
end
def obtener_delimitadores(cadena_numeros)
    ((cadena_numeros.split(/\n/)[0].gsub"/","").gsub "[","").gsub "]",""
end
def obtener_numeros(cadena_numeros, delimitadores)
    cadena_numeros.split(/\n/)[1].split(Regexp.union(delimitadores.split("")))
end
def existen_delimitadores(cadena_numeros)
    cadena_numeros.split(/\n/)[0].include?"//"   
end
