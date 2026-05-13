object camion {
const cosas=[]

method cargarCosa(unaCosa) =cosas.add(unaCosa) 

method descargarCosa(unaCosa) =cosas.remove(unaCosa)

method peso() = cosas.peso() + self.tara()

method tara() =1000

method pesoDeCosasEsPar() = cosas.all({c=>c.peso().even()})

method cosaQuePesa(unPeso) = cosas.any({c=>c.peso() == unPeso})

method primerCosaConPeligrosidad() = cosas.nivelPeligrosidad().first()

method cosaSuperaNivelPeligrosidad(unNivel) = cosas.all({c=>c.nivelPeligrosidad()> unNivel})

method listaDeCosasQueSuperaPeligrosidad() = self.cosaSuperaNivelPeligrosidad(self).asList()

method estaExcedidoDePeso() = self.peso() >2500

method puedeCircularEnRuta(valor) = !self.estaExcedidoDePeso() and self.cosaSuperaNivelPeligrosidad(valor)

method tieneAlgunaCosaQuePesa(val1,val2) =cosas.any({c=>c.peso().between(val1, val2)}) 

method cosaMasPesada() =cosas.max({c=>c.peso()}) 
}