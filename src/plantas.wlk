class Maiz {
	var property estado = 1
	var property estaListo = false
	
	method image() {
		// Modificar esto para que la imagen dependa del estado.
		if(estado == 2){
			return "maiz_adulto.png"}	
		else return "maiz_bebe.png"
			}
	method regado(){
		 estado = 2
		 estaListo = true
	}
}

class Trigo {
	var property estado = 1
	var property estaListo = false
	method image() {
		// Modificar esto para que la imagen dependa del estado.
		if(estado == 1){
			return "trigo_0.png"}	
		else if(estado == 2) { 
			return "trigo_1.png"} 
		else{
			return "trigo_3.png"}	
	}
	method regado(){
		 estado = estado + 1
		 estaListo = true
	}
}

class Tomaco {
	var property estado = 1
	var property estaListo = false
	method image() {
		// Modificar esto para que la imagen dependa del estado.
		if(estado == 1){
			return "tomaco_podrido.png"}	
		else{ 
			return "tomaco_ok.png"} 
			}
	method regado(){
		 estado = 2
		 estaListo = true
	}
}

// Agregar las demás plantas y completar el Maiz.