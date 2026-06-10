import elementos.*
class Plaga{
  var property poblacion

  method nivelDeDaño()
  method transmiteEnfermedad(){
    return poblacion >= 10 and self.condicionAdicional()
  }

  method condicionAdicional()

  method efectoDeAtaque(elemento){
    poblacion += poblacion * 0.1
    elemento.recibirAtaque(self)
  }
}

class Cucarachas inherits Plaga{
  var property pesoPromedio

  override method nivelDeDaño() = poblacion / 2

  override method condicionAdicional() = pesoPromedio >= 10

  override method efectoDeAtaque(elemento){
    super(elemento);
    pesoPromedio += 2
  }
}

class Pulga inherits Plaga{
  override method nivelDeDaño() = poblacion * 2
  
  override method condicionAdicional() = true
}

class Garrapata inherits Plaga{
  override method nivelDeDaño() = poblacion * 2

  override method efectoDeAtaque(elemento) {
    poblacion += poblacion * 0.2
  }

  override method condicionAdicional() = true
}

class Mosquito inherits Plaga{
  override method nivelDeDaño() = poblacion

  override method condicionAdicional() = poblacion % 3 == 0
}