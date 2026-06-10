import plagas.*

class Hogar{
    var property mugre
    var property confort

    method esBueno() = mugre * 2 <= confort

    method recibirAtaque(unaPlaga) {
      mugre += unaPlaga.nivelDeDaño()
    }
}

class Huerta {
  var property produccion

  method esBueno() = produccion > nivelDeHuerta.valor()

  method recibirAtaque(unaPlaga) {
    produccion -= unaPlaga.nivelDeDaño() * 0.1
    if (unaPlaga.transmiteEnfermedad()){
      produccion -= 10
    }
  }
}
object nivelDeHuerta {
  var property valor = 10
}

class Mascota {
  var property salud

  method esBueno() = salud > 250

  method recibirAtaque(unaPlaga) {
    if(unaPlaga.transmiteEnfermedad()){
      salud -= unaPlaga.nivelDeDaño()
    }
  }
}

class Barrio {
    const property elementos = []

    method esCopado() = self.cantidadDeElementosBuenos() > elementos.size() / 2

    method cantidadDeElementosBuenos() = elementos.count({e => e.esBueno()})
}