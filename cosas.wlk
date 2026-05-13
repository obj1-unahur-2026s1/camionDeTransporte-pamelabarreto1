object cosas {
    const cosas=[knightRider]
    method sacarCosa(cosa) =cosas.remove(cosa)
    method agregarCosa(cosa) =cosas.add(cosa)  

}

object knightRider {
  method peso() =500
  method nivelPeligrosidad() =10  
}
object bumblebee {
    var esAuto=true
  method peso() =800
  method nivelPeligrosidad() =if(esAuto)15 else 30
  method esRobot() {esAuto=false}
  method esAuto() =esAuto

  
}
object paqueteLadrillos {
  var cantLadrillos=100
  method peso() = cantLadrillos*2
  method nivelPeligrosidad() =2  
  method cantLadrillos(unaCantidad) {cantLadrillos=unaCantidad}
}
object arena {
    var peso=100
  method peso() =peso 
  method aumentarArena(unValor) {peso=peso+unValor}
  method nivelPeligrosidad() =1  
}
object bateria {
  var estaConMisiles=true
  method peso() =if(estaConMisiles)300 else 200
  method nivelPeligrosidad() =if(estaConMisiles)100 else 0 
  method quitarMisiles() {estaConMisiles=false}   
  method ponerMisiles() =estaConMisiles 
}
object contenedor {
  const cosas=[]
  method peso() =100 + cosas.sum({c=>c.peso()})
  method nivelPeligrosidad() =if(cosas.isEmpty())0 else cosas.max({c=>c.nivelPeligrosidad()})

}
object residuos {
  var peso=10
  method peso() =peso
  method cambiarPeso(unPeso) {
    peso=unPeso
  } 
  method nivelPeligrosidad() = 200
 
}
object embalaje {
  const cosa=[]
  method peso() =cosa.peso()
  method nivelPeligrosidad() =cosa.nivelPeligrosidad()/2

}