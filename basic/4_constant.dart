/**
 * final variable need to be initialized there itself and can't able to change it's value. We can able to assign a runtime value.
 * 
 * const is little different that final. Where we can able to assign a compile time value. We can't able to assign a runtime
 * value. For ex. const a = 5; will be working. because 5 is a compile time value. But const a = DateTime.now() can't abe used.
 * Because, DateTime.now() will be keep on changing at runtime.
 * We can use const for the constructor to create a immutable object.
 */
// Final and constant
void main() {
  ExampleFinal a = new ExampleFinal(7);
  ExampleFinal2 b = new ExampleFinal2();
  ExampleConst1 exampleConst1 = new ExampleConst1();
  ExampleConst2 exampleConst2 = new ExampleConst2();
}

class ExampleFinal {
  static final c = DateTime.now();
  // static const a = 5;
  final a = 5;
  final b;
  ExampleFinal(this.b) {
    const a = 6;
    print("value of a is ${a}");
    // a = 6;
  }
}

class ExampleFinal2 {
  final a = 6;
  ExampleFinal2() {
    // Uncommenting below line will give error. Because it's defined as final variable.
    // a = 6;
    print(a);
  }
}

class ExampleConst1 {
  // Uncommenting below line will give error. Because instant variables should not be declared without static.
  // const a = 5;
  static const b = 5;
  ExampleConst1() {
    print(b);
  }
}

class ExampleConst2 {
  ExampleConst2() {
    // Uncommenting below line will give error. We need to initialize a variable while initializing it with const.
    // const a;
    const a = 5;
    print(a);

    const b = 5.6 * a;
    print(b);

    var c = 5;
    // Uncommenting below line will give error. Because we can't able to do any operation of a constant variable with a normal variable
    // const d = 85 * c;

    // Variable contains constant values. So we can able to assign multiple values.
    var e = const[];
    e = [5, 6, 7, 8];
    e = [6, 7, 7, 8, 9];
    print(e);

    // Variable mentioned as final which contains const values. So we can't able to assign a 
    // different value to a final variable.
    final e1 = const[];
    // Below comment line is fine. Because are initializing there itself.
    // final e1 = const[5, 6];
    // Uncommenting below line will give error. Because e1 is mentioned as final.
    // e1 = [5, 6];

    // Variable mentioned as e2 
    const e2 = const[];
    // Uncommenting below line will give error. It's similar as e1.
    // e2 = [5, 6, 7];

    const f = [5, 7, 8, 6];
    // Uncommenting below line will give error. Because we initialized f as const. So we can't able to change the value.
    // f = [5, 6, 7, 8];

    // Uncommenting below line will give error. Because variable c is not constant. 
    // const g = [c, 4, 6, 7];

    final h = 6;
    // Uncommenting below line will give error. Because variable h is not defined using const.
    // const i = [h, 6];

    // Uncommenting below line will give error. Because we can't assign a runtime value to a const variable.
    // We need to assign only compile time value.
    // const j = DateTime.now();

    const immutableList = [
      ImmutableExample(5, 6),
      ImmutableExample(7, 8),
      // Uncommenting below line will give error. Because we can't able to assign a non const class
      // MutableExample(9, 10)
    ];

    var immutableList1 = const[
      ImmutableExample(6, 9)
    ];
    immutableList1 = const[
      ImmutableExample(9, 10),
      ImmutableExample(11, 12)
    ];

    const ImmutableExample2 = const [
      ImmutableExample(9, 10),
      ImmutableExample(11, 12),
      5.6
    ];

    for (var i = 0;i < immutableList.length;i++) {
      print(immutableList[i].doSomething());
    }

    ImmutableExample immutableObject = const ImmutableExample(6, 8);
    immutableObject = const ImmutableExample(9, 10);
    print(immutableObject.doSomething());

    final mutableList = [
      ImmutableExample(10, 15),
      MutableExample(20, 25),
      5.67
    ];
  }
}

class ImmutableExample {
  final a;
  final b;

  // Constructor with const to create a immutable object.
  const ImmutableExample(this.a, this.b);

  doSomething() {
    return a + b;
  }
}

class MutableExample {
  var a;
  var b;
  MutableExample(this.a, this.b);

  void updateValue(var a, var b) {
    this.a = a;
    this.b = b;
  }
}