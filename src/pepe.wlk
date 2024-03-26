object pepe {
	 var sueldo = 0
	 var categoria = cadete 
	 var bonoR = resultadoNulo
	 var bonoP = presentismoNulo
	 var cantFaltas = 0
		method sueldo() {
		sueldo = self.neto() + self.bonoResultado() + self.bonoPresentismo()
		return sueldo
	}
	method categoria(_categoria) {
		categoria = _categoria
	}
	method bonoR(_bonoR) {
		bonoR = _bonoR
	}
	
	method bonoP(_bonoP) {
		bonoP = _bonoP
	}
	method neto() {
		return categoria.sueldo()
	}
	
	method bonoResultado() {
		return bonoR.valor(self)
	}
	
	method bonoPresentismo() {
		return bonoP.valor(self)
	}
	method cantFaltas(_cantFaltas) {
		cantFaltas = _cantFaltas
	}
	method cantFaltas() {
			return cantFaltas 
	}	
}
	
object cadete {		
		method sueldo() {
			return 15000
		}
}
	
	
object gerente {
		method sueldo() {
			return 20000
		}
}	
object porcentaje {

		method valor(empleado) {
			return empleado.neto() * 0.1
		}
}
	
object montoFijo {
		method valor(empleado) {
			return 800
		}
}
	
object resultadoNulo {
		method valor(empleado) {
			return 0
		}
}
object presentismoNulo {
		method valor(empleado) {
			return 0
		}
}	
object normal {
		const valor = 2000
		method valor(empleado) {
			return if(empleado.cantFaltas() == 0) valor else (if (empleado.cantFaltas() == 1) valor / 2 else 0) 
		}
}
object ajuste {
		const valor = 100
		
		method valor(empleado) {
			return if(empleado.cantFaltas() == 0) valor else  0
		}
}
	
object demagogico {
		const valor = 500
		method valor(empleado) {
			return if (empleado.neto() < 18000) valor else 300
		}
		
}
	
	
