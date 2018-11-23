

class Autos{
	
	const color
	
	method color() { return color}
}


class CrevroletCorsa inherits Autos {

	const capacidad = 4
	const velocMax = 150 //Kms
	const peso = 1300 //Kg
	
	method peso() { return peso }
	
	method velocidad() { return velocMax }
	
	method capacidad() { return capacidad }
	
	override method color() { return color}
	
}

class Standard inherits Autos {
	
	var property tanqueAdicional = null
	var property peso =1200
	var property capacidad = 4
	var property velocMax 
	
	method peso() { self.pesoActual()
					return peso
	}
	
	method velocidad() { self.velocidadActual()
						 return velocMax
	}
	
	method capacidad() { self.capacidadActual()
						 return capacidad
	}
	
	method ponerTanqueAdicional(bool) { tanqueAdicional = bool }
	
	method capacidadActual() { if(tanqueAdicional){capacidad = 3 }
								else{ capacidad = 4 }
	}
	
	method velocidadActual() { if(tanqueAdicional){ velocMax= 120 }
								else{ velocMax= 110 }
	}
	
	method pesoActual() { if(tanqueAdicional){ peso += 150 }
								else{ peso }
	}
	
	override method color() { return color}
	
}

class Trafic inherits Autos {
	
	var property peso = 4000
	var property capacidad = 0
	var property velocMax = 0
	var property motorBueno = null //el mas rapido es true y el mas lento es false
	var property capacidadComodo = null //el mas comodo es true y el menos comodo es false
	
	
	method peso() { self.velocidadActual()
					self.capacidadActual()
					return peso
	}
	
	method velocidad() { self.velocidadActual()
						 return velocMax
	}
	
	method capacidad() { self.capacidadActual()
						 return capacidad
	}
	
	method cambiarMotor(bool) { motorBueno = bool }
	
	method cambiarInterior(bool) {  capacidadComodo = bool }
	
	method capacidadActual() { if( capacidadComodo ){ capacidad = 5
													  peso += 700 }
								else{ capacidad = 12
									  peso += 1000}
	}
	
	method velocidadActual() { if(motorBueno){ velocMax = 130
												  peso += 800 }
								else{velocMax =80
									 peso += 500}
	}
	
	override method color() { return color}
}

class AutosDistintos inherits Autos {
	
	var property peso 
	var property capacidad 
	var property velocMax 
	
	method peso() {return peso}
	
	method velocidad() { return velocMax }
	
	method capacidad() { return capacidad }
	
	override method color() { return color}
	
	
}


