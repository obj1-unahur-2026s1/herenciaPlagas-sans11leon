class Hogar{
    var property mugre
    var property confort

    method esBueno() = mugre * 2 <= confort
}

class Huerta {
  var property produccion

  method esBueno() = produccion > nivelDeHuerta.valor()
}

object nivelDeHuerta {
  var property valor = 10
}

class Mascota {
  var property salud

  method esBueno() = salud > 250
}

class Barrio {
    const property elementos = []

    method esCopado() = self.cantidadDeElementosBuenos() > elementos.size() / 2

    method cantidadDeElementosBuenos() = elementos.count({e => e.esBueno()})
}