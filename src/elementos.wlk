//etapa 1

class Hogar {
	var nivelmugre
	var confort
	method esBueno() {
		return nivelmugre <= confort / 2
		}
}

class Huerta {
	var capacidadproduccion
	method esBueno() {
		return capacidadproduccion > reguladorHuerta.nivelMinimo()
	}
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
}

class Barrio {
	const property elementos = []
	method elementosBuenos() = elementos.count {e => e.esBueno()}
	method elementosMalos() = elementos.count{e => not e.esBueno()}
	method esCopado() = self.elementosBuenos() > self.elementosMalos()
}