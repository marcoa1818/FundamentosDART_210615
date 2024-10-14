abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Este animal puede volar!');
  void planear(int distanciaMaxima)=> print('Este animal puede planear hasta: ${distanciaMaxima}');
  void ascender(double alturaMaxima)=>print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar.');
  void descender(String velocidadMax)=> print('Este animal puede descendera una velocidad e hasta: ${velocidadMax}');
  
}

mixin Caminante {
  void caminar() => print('Este animal puede caminar!');
  void correr (double velocidadMax) => print('Este animal puede correr hasta: ${velocidadMax} km/h');
  void trotar (bool trote) => print('Este animal puede trotar: ${trote}' );
  void saltar (bool salto) => print('Este animal puede saltar; ${salto}');
}

mixin Nadador {
  void nadar() => print('Este animal puede nadar!');
  void sumergir (double profundidadMax) => print('Este animal se puede sumergir: ${profundidadMax} metros');
  void respirar (bool respiro) => print('Este animal puede respirar: ${respiro}');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

class PatoMandarin extends Ave with Caminante, Volador, Nadador {}
class GatoSiames extends Mamifero with Caminante {}


void main () {

  final flipper = Delfin();
  print("Instanciando la clase de Delfin, y accediendo a sus funciones.");
  flipper.nadar();

  print("----------------------------------------------------------------------------");
  print("Instanciando la clase de Murcielago, y accediendo a sus funciones.");
  final  chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("----------------------------------------------------------------------------");
  print("Instanciando la clase de Pato, y accediendo a sus funciones.");
  final pekines = Pato();
  pekines.volar();
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender("5 km/h");
  pekines.nadar();
  pekines.caminar();

  print("----------------------------------------------------------------------------");
print("Instanciando la clase de Gato Siames, y accediendo a sus funciones");
final cat = GatoSiames ();
  cat.caminar();
  cat.correr(48);
  cat.trotar(true);
  cat.saltar(true);

  print("----------------------------------------------------------------------------");
print("Instanciando la clase de Pato Mandarin, y accediendo a sus funciones");
final patoMandarin = PatoMandarin ();
  patoMandarin.volar();
  patoMandarin.planear(100);
  patoMandarin.ascender(30);
  patoMandarin.descender("5 km/h");
  patoMandarin.caminar();
  patoMandarin.correr(10.5);
  patoMandarin.trotar(true);
  patoMandarin.saltar(false);
  patoMandarin.nadar();
  patoMandarin.sumergir(1);
  patoMandarin.respirar(false);
  
}