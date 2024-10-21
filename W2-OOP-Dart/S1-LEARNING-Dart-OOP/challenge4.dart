// class Distance {
//   final double _distance;
  
//   Distance.d1(double a) : _distance = a;
//   Distance.d2(double b) : _distance = b;
  
//   double get distance {
//     return _distance;
//   }
  
// }
// void main() {
//     Distance d1 = new Distance.d1(3.4);
//     Distance d2 = new Distance.d2(2.4);
    
//     print('Total distance: ${d1.distance + d2.distance}');
// }


/*
immutable class
name constructor
using getter 
*/
class Distance {
  final double _value;

  // Parameter constructor
  Distance({required double value}) : _value = value;
  double get value => _value;
  
  // Name constructor
  Distance.kms(double value) : this(value: value);
  Distance.meter(double value) : this(value: value / 1000);
  Distance.cms(double value) : this(value: value / 100000);

  Distance operator + (Distance b) {
    return Distance(value: value + b.value);
  }

  double get kms => value;
  double get cms => value * 100000;
  double get meter => value * 1000;
}

void main() {
  Distance a = Distance.meter(10);
  Distance b = Distance.kms(30);
  print("The total value :${(a+b).kms} km");
}