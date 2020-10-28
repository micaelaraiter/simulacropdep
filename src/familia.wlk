/** First Wollok example */
class Familia {
	var miembros = []
	
	method peligroso() {
		return self.miembroMasPeligroso()
	}
	
	method miembroMasPeligroso(){
		return miembros.max({integrante => integrante.miembroMasPeligroso()})
	}
	
	method elQueQuieraEstarArmadoQueAndeArmado(){
		 miembros.forAll({integrante => integrante.agregarRevolverCon6Balas()})
	}
	
	///no tengo idea de como hacer el ataque
	method ataqueSorpresa(familiaAAtacar){
		 miembros.forAll({integrante => integrante.atacar()})
	}
	
	method luto(){
		self.promocionarSoldado()
		self.nombrarDon()
		self.aumentarLealtad()
	}
	
	
	method promocionarSoldado(){
		miembros.forAll({integrante => integrante.promocionarSoldado()})
	}
	
	method nombrarDon(){
		miembros.forAll({integrante => integrante.promocionarSoldado()})
	}
	
	
	method aumentarLealtad(){
		miembros.forAll({integrante => integrante.aumentarLealtad()})
	}
	
}
