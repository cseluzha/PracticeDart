void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilites = ['impostor'];
  final sprites = <String>['ditto/fornt.png', 'ditto/back.png'];

  // dynamic == null

  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;
  print("""
$pokemon
$hp
$isAlive
$abilites
$sprites
$errorMessage
""");
}
