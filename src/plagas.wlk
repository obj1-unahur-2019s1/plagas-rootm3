class Plaga {
	var property poblacion
	method transmiteEnfermedad() = poblacion >= 10
	method atacar(elemento) {poblacion += poblacion *0.1}
	method niveldano() = poblacion
}

class Plagacucaracha inherits Plaga{
	var property pesoPromedio
	override method transmiteEnfermedad() = super() and pesoPromedio >= 10 //super es hace lo que dice aca arriba por class Plaga y override (pisa) porque ya esta arriba el metodo transmite enfermedad
	override method niveldano() = super() / 2
	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2
	}
}

class Plagapulgas inherits Plaga{
	override method niveldano() = super() * 2
}

class Plagagarrapatas inherits Plaga{
	override method niveldano() = super() * 2
	override method atacar(elemento) {
		poblacion += poblacion * 0.2
	}
}

class PlagaMosquitos inherits Plaga{
	override method transmiteEnfermedad() = poblacion % 3 == 0
	
}