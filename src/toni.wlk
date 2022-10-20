import wollok.game.*
import plantas.*
import pachamama.*

object toni {
	const property image = "toni.png"
	var property position = game.at(3, 3)
	var property siembra = [] 
	var property cosecha = []
	
	method sembrarTrigo(){
		if (game.colliders(self).size() >=1){
			game.say(self, "Ya sembre aca")
		}
		else {const trigo1 = new Trigo()
		game.addVisualIn(trigo1,self.position())
		siembra.add(trigo1)}
	}
	method sembrarMaiz(){
		if (game.colliders(self).size() >=1){
			game.say(self, "Ya sembre aca")
	}
		else {const maiz1 = new Maiz()
		game.addVisualIn(maiz1,self.position())
		siembra.add(maiz1)}
	}
	method sembrarTomaco(){
		if (game.colliders(self).size() >=1){
			game.say(self, "Ya sembre aca")
	}
	else {const tomaco1 = new Tomaco()
		game.addVisualIn(tomaco1,self.position())
		siembra.add(tomaco1)}
	}
	method regarTablero(){
		siembra.forEach({p => p.regado()})
	}
	method riega(){
		game.colliders(self).first().regado()
	}
	method cosechaPlantasListas(){
		self.siembra().forEach({p => self.cosecha(p)})
	}
	method cosecha(algo){
		if (algo.estaListo()){
			cosecha.add(algo)
			siembra.remove(algo)
			game.removeVisual(algo)
		}
		else game.say(self, "no hay nada o no esta listo")
	}
	method cosechaActual(){
		if (game.colliders(self).size() >= 1){
			self.cosecha(game.colliders(self).first())}
	}
	method vendeTodaLaCosecha(){
		
	}
	method estado(){
		
	}
	// Pegar acá todo lo que tenían de Toni en la etapa 1
}