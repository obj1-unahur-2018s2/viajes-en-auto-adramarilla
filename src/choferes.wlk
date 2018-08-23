import clientes.*

//precio pactado con los clientes
object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms 
	}
}

//aumenta el precio 20%
object gabriela { 
	method precioViaje(cliente, kms) { 
		return (cliente.precioPactadoPorKm() * kms) * 1.2 
	}
}

//precio pactado con los clientes pero minimo de $50
object mariela {
	method precioViaje(cliente, kms) { 
		var cont_pesos = (cliente.precioPactadoPorKm() * kms)  //se declara la variable dentro del metodo porque se utiliza en este mismo.
		(if (cont_pesos >50) { return cont_pesos } else { return 50})
		} 
}

//cobra $100 cada 8km, y $200 si son mas de 8km. Sin importar los que se pacto con la agencia
object juana {
//	method precioViaje(cliente, kms) { 
//		return (cliente.precioPactadoPorKm() * kms) * 1.2 
//	}
}