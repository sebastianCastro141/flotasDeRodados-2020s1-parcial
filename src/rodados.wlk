class ChevroletCorsa 
{
	
	var color = ""
	method capacidad() = 4
	method velMaxima() = 150
	method peso () = 1300
	method color() = color
	method setColor(nuevoColor){color = nuevoColor}	
	
}

class RenaultKwid 
{
	var tanqueAdicional = true
	method capacidad() {return if (tanqueAdicional){3}else{4}}
	method velMaxima() {return if (tanqueAdicional){120}else{110}}
	method peso () {return if (tanqueAdicional){1350}else{1200}}
	method color() = "azul"
	method sinTanqueAdicional () {tanqueAdicional = false}
	
}

class AutosEspeciales 
{
	var capacidad = 0
	var velMaxima = 0
	var peso = 0
	var color = ""
	method setCapacidad(nuevaCapacidad){capacidad = nuevaCapacidad }
	method setVelMaxima(nuevaVel){velMaxima = nuevaVel}
	method setPeso(nuevoPeso){peso = nuevoPeso}
	method setColor (nuevoColor){color = nuevoColor}
	method capacidad()= capacidad
	method velMaxima() = velMaxima
	method peso() = peso
	method color() = color
}