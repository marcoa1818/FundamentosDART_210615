void main() {
//PRACTICA 04: TIPOS DE DATOS EN DART
  
  //Cadenas (String)
  final String pokemon = 'Pikachu';
  
  //Enteros (int)
  final int hp = 100;
  
  
  final bool isAlive = true;
  
  //Listas (List)
  final abilitties = ['Impact-Trueno', 'Cola de Hierro','Ataque Rápido'];
  
  final sprites = <String>['Pikachu_front.png','Pikachu_back.png'];
  
  print(""" El pokemon que elegiste es: $pokemon
  --------------------------------------------------------------------
  Las estadisticas de $pokemon son:
  Vida (HP) : $hp
  Estatus de vida: $isAlive
  Habilidades: $abilitties
  Imágenes: $sprites
  """);
  
}
