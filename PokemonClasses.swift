//
//  Created by Anh Nguyen on 1/26/25.
//
class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]){
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  func displayInfo(){
    print("I am \(name), number \(num)/896!")
    print("I am type \(type)")
    print("My abilities are \(ability)")
  }
}

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass", "Poison"], ability: ["Overgrow"])

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water"], ability: ["Torrent"])

var groupOfPokemons = [bulbasaur, charmander, squirtle]
for pokemon in groupOfPokemons {
  pokemon.displayInfo()
  print()
}

class GigantamaxPokemon: Pokemon {
  var location = ""

  init(num: Int, name: String, type: [String], ability: [String], location: String){
    self.location = location
    super.init(num: num, name: name, type: type, ability: ability)
  }

  override func displayInfo() {
    print("I am \(name), number \(num)/896!")
    print("I am type \(type)")
    print("My abilities are \(ability)")
    print("I was found in \(location)")
  }
}

var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

charizard.displayInfo()
