void main() {
  final mySquare = Square(side: -10);

//   mySquare.side = 5;

  print('área: ${mySquare.area}');
}

class Square {
  // _ is for properties privaties
  double _side; // side * side

  Square({required double side})
  // assert is used for add an validation.
  //In this case for side major than 0
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

// Getter for the area.
  double get area {
    return _side * _side;
  }

  // Setter for side
  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
