object tom {
    var energia = 50
    var velocidadMaxima = 0

    method energia() = energia
    method energia(cantidad) {energia = cantidad}  

    method correr(distancia) {
        energia = energia - (distancia / 2)
        return energia
    }

    method comerRaton(ratonX) {
        energia = energia + (12 + ratonX.peso())
    }

    method velocidadMaxima()  { 
        velocidadMaxima = (5 + (energia / 10))
        return velocidadMaxima
    }

    method puedaCazarRatonADistancia(distancia) {
        var energiaInicial = energia
        var consumo = 0
        energia - self.correr(distancia)
        consumo = energiaInicial - energia
        return energiaInicial > consumo
    }

    method cazarRatonADistancia(distancia , ratonX) {
        if(self.puedaCazarRatonADistancia(distancia)) {
            self.comerRaton(ratonX)
        }
    }  
}

object jerry {
  var edad = 2
  var peso = 0
  method edad() = edad 
  method edad(cantidad) {edad += cantidad} 
  method peso()  {
    peso = edad * 20
    return peso
   } 
}

object nibbles {
  const peso = 35
  method peso() = peso 
}

// Inventar otro ratón