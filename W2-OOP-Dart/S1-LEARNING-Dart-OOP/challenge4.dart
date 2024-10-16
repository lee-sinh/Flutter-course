class Distance {
  final double _distance;
  
  Distance.d1(double a) : _distance = a;
  Distance.d2(double b) : _distance = b;
  
  double get distance {
    return _distance;
  }
  
}
void main() {
    Distance d1 = new Distance.d1(3.4);
    Distance d2 = new Distance.d2(2.4);
    
    print('Total distance: ${d1.distance + d2.distance}');
}