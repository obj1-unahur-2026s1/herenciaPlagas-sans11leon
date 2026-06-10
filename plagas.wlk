import elementos.*
class Plaga{
  var property poblacion

  method nivelDeDaño()
  method transmiteEnfermedad(){
    return poblacion >= 10 and self.condicionAdicional()
  }

  method condicionAdicional() 
}

class Cucarachas inherits Plaga{
  var property pesoPromedio

  override method nivelDeDaño() = poblacion / 2

  override method condicionAdicional() = pesoPromedio >= 10
}

class Pulga inherits Plaga{
  override method nivelDeDaño() = poblacion * 2
}

class Garrapata inherits Plaga{
  override method nivelDeDaño() = poblacion * 2
}

class Mosquito inherits Plaga{
  override method nivelDeDaño() = poblacion

  override method condicionAdicional() = poblacion % 3 == 0
}