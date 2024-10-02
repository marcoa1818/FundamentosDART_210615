void main() {
  // CONSTRUCTORES NOMBRADOS
  // CASO DE PRUEBA 1 -- ENVIANDO TODOS

  final Marquito = Person(
    ID: 250,
    cortesyTitle:"Sr.",
    name: "Marco",
    firstLastname: "Morales",
    secondLastname: "Rivera",
    gender: "Hombre",
    bloodGroup: "O+",
    photoURL: "images/clients/250.png",
    curp: "MORM030108HPLRVRA3",
    birthdate: DateTime(1992, 08, 05),
    isActive: true,
    createdAt: DateTime(2024, 09, 2024, 11, 05, 16)

  );

  print(Marquito);

  // CASO DE PRUEBA 02 -- ENVIANDO SOLO LOS DATOS REQUERIDOS (OBLIGATORIOS)
  final Marcochetos = Person(
    ID: 125,

    name: "Antonio",
    firstLastname: "Morales",
    gender: "Hombre",
    bloodGroup: "O+",
    birthdate: DateTime(2003, 01, 08),


  );
  print(Marcochetos);




}

class Person {
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastname;
  String? secondLastname;
  String gender;
  String bloodGroup;
  String? photoURL;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;

  Person(
    {
      required this.ID,
      this.cortesyTitle,
      required this.name,
      required this.firstLastname,
      this.secondLastname,
      required this.gender,
      required this.bloodGroup,
      this.photoURL,
      this.curp,
      required this.birthdate,
      this.isActive=true,
      DateTime? createdAt,
      this.updatedAt
    })
    : createdAt=createdAt ?? DateTime.now();
  @override
  String toString(){
    final String formatedBirthDate =
      "${birthdate.day.toString().padLeft(2, '0')}/" +
        "${birthdate.month.toString().padLeft(2, '0')}/${birthdate.year}";

    final String formatedCreatedDate =
      "${createdAt.day.toString().padLeft(2, '0')}/" +
        "${createdAt.month.toString().padLeft(2, '0')}/${createdAt.year}${createdAt.hour.toString().padLeft(2,'0')}:${createdAt.minute.toString().padLeft(2,
            '0')}:${createdAt.second.toString().padLeft(2,'0')}";
    curp ??= "No registrdo";
    if (curp == "") curp = "No registrado";

    String status = "Sin definir";
    if (isActive)
      status = "Activo";
    else
      status = "Inactivo";

    return """
    --------------------------------------------------------
    DATOS DE LA PERSONA
    --------------------------------------------------------
    ID: $ID,
    Nombre: $name $firstLastname $secondLastname
    Genero: $gender
    Grupo sanguineo: $bloodGroup
    Fecha de nacimiento: $formatedBirthDate
    Foto: $photoURL
    CURP: $curp
    Estatus: $status
    Fecha de registro: $formatedCreatedDate
    --------------------------------------------------------
    """;

  }
}