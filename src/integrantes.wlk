class Revolver{
	var balas
	method matar(victima){
		self.disparar(victima)
	}	
	
	method disparar(victima){
		if(self.tieneBalas()){
			victima.morirse()
			self.gastarBalas()
		}		
	}
	
	method tieneBalas(){
		return balas > 0
	}
	
	method gastarBalas(){
		balas = (balas - 1).max(0)
	}
	
	method recargarBalas(cantidadDeBalas){
		balas = balas + cantidadDeBalas
	}
}

object escopeta{
	method matar(victima){
		if(victima.estaHerida()){
			victima.morirse()
		} else{
			victima.herir()
		}
	}
}

class CuerdaDePiano{
	const esBuenaCalidad
	method matar(victima){
		if(esBuenaCalidad){
			victima.morirse()
		}
	}	
}

