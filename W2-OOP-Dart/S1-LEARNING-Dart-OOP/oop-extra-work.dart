class Window {
  String color;
  String position;
  double width, height;

  Window({required this.color, required this.position, required this.width, required this.height});

  @override
  String toString() {
    return '(Position: $position, Color: $color, Width: $width, Height: $height)';
  }
}

class Door {
  String position;
  double width, height;

  Door({required this.position, required this.width, required this.height});

  @override
  String toString() {
    return '(Position: $position, Width: $width, Height: $height)';
  }
}

class Roof {
  String color;
  String type;

  Roof({required this.color, required this.type});

  @override
  String toString() {
    return '(Color: $color, Type: $type)';
  }
}

class Chimney {
  String color;
  int amount;

  Chimney({required this.color, required this.amount});

  @override
  String toString() {
    return '(Color: $color, Amount: $amount)';
  }
}

class House {
  String address;
  List<Window> windows = [];
  List<Door> doors = [];
  List<Roof> roofs = [];
  List<Chimney> chimneys = [];

  House(this.address);

  void addWindow(Window newWindow) {
    windows.add(newWindow);
  }

  void addDoor(Door newDoor) {
    doors.add(newDoor);
  }

  void addRoof(Roof newRoof) {
    roofs.add(newRoof);
  }

  void addChimney(Chimney newChimney) {
    chimneys.add(newChimney);
  }

  @override
  String toString() {
    return '\n Address: $address, \n Windows: $windows, \n Doors: $doors, \n Roofs: $roofs, \n Chimneys: $chimneys';
  }
}

void main() {
  House myHouse = House("60R street");

  myHouse.addWindow(Window(color: "blue", position: "front", width: 20, height: 15));
  myHouse.addWindow(Window(color: "red", position: "back", width: 15, height: 10));
  myHouse.addDoor(Door(position: "left", width: 5, height: 3));
  myHouse.addRoof(Roof(color: "white", type: "normal"));
  myHouse.addChimney(Chimney(color: "black", amount: 2));

  print("House Details: $myHouse");
}
