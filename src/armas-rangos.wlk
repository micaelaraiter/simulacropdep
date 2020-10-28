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


class Don{
	var subordinados = #{}
	
	method atacar(subordinado, victima){
		subordinado.atacarDosVeces(victima)
	}
	
}

class Subordinado{
	method atacarDosVeces(victima){
		self.atacar(victima)
		self.atacar(victima)
	}
	
	method atacar(victima)
}

class Subjefe inherits Subordinado{
	var subordinados = []
	var ultimaArmaUtilizada
	
	method atacar(subjefe, victima){
		ultimaArmaUtilizada = self.elegirArma(subjefe)
		ultimaArmaUtilizada.matar(victima)
	}
	
	method elegirArma(subjefe){
		return subjefe.armas().any({arma => arma != ultimaArmaUtilizada })
	}
	
}


class Soldado inherits Subordinado{
		
	method atacar(soldado,victima){
		const arma = self.elegirArma(soldado)
		arma.matar(victima)
	}
	
	method elegirArma(soldado){
		return soldado.armas().first()
	}
	
}
