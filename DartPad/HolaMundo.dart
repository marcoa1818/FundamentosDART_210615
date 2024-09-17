void main (){
  
  //Declarando una variable generica para almacenar mi nombre
  
  var myName =  'Marco A.';
  String myLastName =  'Morales'; //final es para declarar variable, pero no puede cambiarse
  final myDNI = 210615;
  late final int myAge;
  
  //Corregir mi nombre
  myName = 'Marco Antonio';
  
  print ('Hola, $myName $myLastName, tu matricula es: $myDNI y tu edad aún no la conozco, porque no se cuando naciste.');
  
  //Interpoblando el valor de las variables con métodos de manipulación o transformación
print ('\nHola, ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad aún no la conozco, porque no se cuando naciste.');
}