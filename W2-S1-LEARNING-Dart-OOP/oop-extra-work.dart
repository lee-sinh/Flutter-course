class Window {
  String color;
  String position;
  double width, height;

  Window(this.color, this.position, this.width, this.height);
}

class Door {
  String position;
  double width, height;

  Door(this.position, this.width, this.height);
}

class Roof {
  String color;
  String amount;

  Roof(this.color, this.amount);
}

class Chimney {
  String color;
  String amount;

  Chimney(this.color, this.amount);
}


class House {
  String address;

  House(this.address);
  List<Window> windows = [];
  List<Door> doors = [];
  List<Roof> roofs = [];
  List<Chimney> chimneys = [];

  void addWindow(Window newWindow){
    this.windows.add(newWindow);
  }
  void addDoor(Door newDoor){
    this.doors.add(newDoor);
  }
  void addRoof(Roof newRoof){
    this.roofs.add(newRoof);
  }
  void addChimney(Chimney newChimney){
    this.chimneys.add(newChimney);
  }
}

