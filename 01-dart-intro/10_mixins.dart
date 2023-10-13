// References about minin: https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}


// We can put mixin  in this part, but we can use with for reference a minin properties
mixin class Volador {
  void volar() => print('estoy volando!');
}

mixin class Caminante {
  void caminar() => print('estoy caminando!');
}

mixin class Nadador {
  void nadar() => print('estoy nadando!');
}

// with = mixin
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}
