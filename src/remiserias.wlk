import autos.*

class Remiseria{
	
	var property flotaDeAutos = []
	var viajesHehos = #{}
	
	method agregarAFlota(vehiculo) = flotaDeAutos.add(vehiculo)
	
	method quitarDeFlota(vehiculo) = flotaDeAutos.remove(vehiculo)
	
	method pesoTotalFlota() = flotaDeAutos.sum{elem => elem.peso()}
	
	method esRecomendable() = flotaDeAutos.size() > 3 and
							  flotaDeAutos.any{elem => elem.velocidad() >= 100 }
	
	method capacidadTotalYendoA(velocidad) = flotaDeAutos.filter{elem => elem.velocidad() >= velocidad }.sum{elem => elem.capacidad()}
	
	method colorDelAutoMasRapido() = flotaDeAutos.max{elem => elem.velocidad()}.color()
	
	method autosQuePuedenHacerElViaje(viaje) = flotaDeAutos.filter{elem => viaje.puedeHacerElViaje(elem) }
	
	method registrarViaje(viaje) { 
		if ( self.autosQuePuedenHacerElViaje(viaje).isEmpty() ){
				self.error("ningun auto puede hacer el viaje") }
		else{ viajesHehos.add(viaje)
			  viaje.agregarAutoQueSeUtilizo(self.autosQuePuedenHacerElViaje(viaje).first() )
		}
	}
	
	method registroDeViajes() { return viajesHehos }
	
	method numeroDeVijesDe(auto) = viajesHehos.filter{elem => elem.autoUtilizado() == auto }.size() 
	
	method viajesHechoPor(kms) = viajesHehos.filter{elem => elem.kmsARecorrer() == kms }.size()
	
	method lugaresVaciosDeSsperdiciados () = viajesHehos.sum{elem => elem.cantidadDePasajeros() - elem.autoQueAceptoElViaje().capacidad()}
	
	method cuantoHayQuePagarleA(auto) {
		if(viajesHehos.filter{elem => elem.autoUtilizado() == auto }.isEmpty()){ return 0 }
		else{	
			return viajesHehos.filter{elem => elem.autoUtilizado() == auto}.sum{elem => elem.kmsARecorrer()} * 3.min(30)
		}
	}
}

class Viaje{
	
	var property kmsARecorrer
	var property tiempoDelViaje
	var property cantidadDePasajeros
	var property coloresNegados = []
	var property autoQueAceptoElViaje = null
	
	method puedeHacerElViaje(auto) = auto.velocidad() >= kmsARecorrer / tiempoDelViaje + 10 and
									 auto.capacidad() >= cantidadDePasajeros and
									 not coloresNegados.contains(auto.color())
	
	method agregarAutoQueSeUtilizo(auto) { autoQueAceptoElViaje = auto }
	
	method autoUtilizado() { return autoQueAceptoElViaje }
	
}