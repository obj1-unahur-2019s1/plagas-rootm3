//etapa 1

class Hogar {
	var nivelmugre
	var confort
	method esBueno() {
		return nivelmugre <= confort / 2
		}
	method recibirAtaque(plaga){}
}

class Huerta {
	var capacidadproduccion
	method esBueno() {
		return capacidadproduccion > reguladorHuerta.nivelMinimo()
	}
	method recibirAtaque(plaga){}
}

object reguladorHuerta {
	var property nivelMinimo = 20 // a modo de ejemplo
}

class Mascota {
	var property nivelSalud
	const nivelMinimo = 250
	method esBueno() {
		return nivelSalud > nivelMinimo
	}
	method recibirAtaque(plaga){}
}

class Barrio {
	const property elementos = []
	method elementosBuenos() = elementos.count {e => e.esBueno()}
	method elementosMalos() = elementos.count{e => not e.esBueno()}
	method esCopado() = self.elementosBuenos() > self.elementosMalos()
}