void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;
// Direct instance with the params
  Hero({required this.name, this.power = 'Sin poder'});

//Other form for create an instance: 

//   Hero( String pName, String pPower )
//      : name = pName,
//        power = pPower;

// When need show another information of a class, 
// I can use toString for this propuse

  @override
  String toString() {
    return '$name - $power';
  }
}
