import rodados.*
class Dependencia
{
		const property rodados = []
		var cantidadDeEmpleados = 0
		method cantidadDeEmpleados() = cantidadDeEmpleados 
		method setCantidadDeEmpleados(nuevoNumero){cantidadDeEmpleados = nuevoNumero}
		method agregarFlota(rodado) = rodados.add(rodado)
		method quitarDeFlota(rodado)= rodados.remove(rodado)
		method pesoTotalFlota()= rodados.sum({r => r.peso()})
		method estaBienEquipada() = rodados.size()>= 3 and rodados.all({r => r.velMaxima()>= 100})
		method capacidadTotalEnColor(color)= rodados.filter({r => r.color() == color}).sum({r => r.capacidad()})
		method colorDelRodadoMasRapido()= rodados.max({r => r.velMaxima()}).color()
		method capacidadFaltante()
		{
			const resta = cantidadDeEmpleados - rodados.sum({r => r.capacidad()})
			return resta.max(0)
				
		}
		method esGrande() = cantidadDeEmpleados >= 40 and rodados.size() >= 5
			  
}
