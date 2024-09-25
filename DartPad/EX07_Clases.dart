void main() {

  //Clase con parametros posicionales los parametros deben respetar su orden para ser asignados en la propiedad
  final wolverine = Hero('Logan','Regeneracion');
  //Clase con parametros noposicionales, lospuedo mandar en desorden
  final xmen = Group (tipo: 'Heroe', nombre: 'xmen');

  final brotherhood = Group (nombre: "Magneto");
  

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print(wolverine.toString());
  print('--------------------------------------------------------------------------');
  print(xmen); 
  print(xmen.nombre);
  print(xmen.tipo);
  //INVOCANDO EL METODO REESCRITO CON @override
  print(xmen.toString());
  print('--------------------------------------------------------------------------');
  print(brotherhood.nombre);
  print(brotherhood.tipo);
  //INVOCANDO EL METODO REESCRITO CON @override
  print(brotherhood.toString());

}

class Hero {
  String name;
  String power;

  Hero(String pName, String pPower)
    : name = pName,
      power = pPower;
}

class  Group {
  String nombre;
  String tipo;

  Group ({required this.nombre, this.tipo="No definido"});

  @override
  String toString()
  {
    return 'Grupo: $nombre, tipo: $tipo';
  }

}