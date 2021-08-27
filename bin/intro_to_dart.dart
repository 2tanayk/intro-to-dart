import 'package:intro_to_dart/intro_to_dart.dart' as intro_to_dart;
import 'dart:math';
// The Dart language has special support for the following:
// Numbers (int, double)
// Strings (String)
// Booleans (bool)
// Lists (List, also known as arrays)
// Sets (Set)
// Maps (Map)
// Runes (Runes; often replaced by the characters API)
// Symbols (Symbol)
// The value null (Null)

late String description; //lateinit
final place = 'Mumbai'; // runtime constant
const bar = 1000000; //compile time constant
var nList = [1, 2, 3];
var _nobleGases = {
  // Key:    Value
  1: 'partridge',
  2: 'turtledoves',
  3: 'golden rings'
};
var loudify = (msg) =>
    '!!! ${msg.toUpperCase()} !!!'; //You can also assign a function to a variable

// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

void printElement(int element) {
  print(element);
}

//function
//this also works on type omission due to type inference
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
//For functions that contain just one expression, you can use a shorthand syntax
// bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

//function with named parameters
//named params are optional unless specified as required, and can be in any order while calling
int threeSum({required int a, required int b, required int c}) {
  return a + b + c;
}

//Wrapping a set of function parameters in [] marks them as optional positional parameters
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//Your function can use = to define default values for both named and positional parameters.
//The default values must be compile-time constants. If no default value is provided, the default value is null.
//Here’s an example of setting default values for named parameters
// Sets the [bold] and [hidden] flags ...
// void enableFlags({bool bold = false, bool hidden = false}) {...}
// bold will be true; hidden will be false.
// enableFlags(bold: true);

//A closure is a function object that has access to variables in its lexical scope, even when the function is used outside of its original scope.

// Functions can close over variables defined in surrounding scopes.
//In the following example, makeAdder() captures the variable addBy.
//Wherever the returned function goes, it remembers addBy.

// Returns a function that adds [addBy] to the
// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

//class
class Point3D {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.
}

class Point2D {
  double x = 0;
  double y = 0;

  Point2D(double x, double y) {
    this.x = x;
    this.y = y;
  }
}
//or
// class Point2D {
//   double x = 0;
//   double y = 0;

//   // Syntactic sugar for setting x and y
//   // before the constructor body runs.
//   Point(this.x, this.y);
// }

const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y);

  // Named constructor
  Point.origin()
      : x = xOrigin,
        y = yOrigin;

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

//inheritance
// class Television {
//   void turnOn() {
//     _illuminateDisplay();
//     _activateIrSensor();
//   }
//   // ···
// }

// class SmartTelevision extends Television {
     //@override
//   void turnOn() {
//     super.turnOn();
//     _bootNetworkInterface();
//     _initializeMemory();
//     _upgradeApps();
//   }
//   // ···
// }

//abstract class

// This class is declared abstract and thus
// can't be instantiated.
abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.
}

//concrete implementation
class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
  }
}

//implicit interfaces

//Every class implicitly defines an interface containing all the instance members of the class and
// of any interfaces it implements. If you want to create a class A that supports
// class B’s API without inheriting B’s implementation, class A should implement the B interface

//A class implements one or more interfaces by declaring them in an implements clause and then providing
// the APIs required by the interfaces. For example

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}
// learn more at https://dart.dev/guides/language/language-tour#classes

void main(List<String> arguments) {
  var number = 42; // Declare and initialize a variable, type inferred to int
  var y = 1.1; //double
  num x = 1; // x can have both int and double values
  //Integer literals are automatically converted to doubles when necessary, Equivalent to double z = 1.0.
  double z = 1;
  String name = 'Tanay';
  int? n; //nullable type
  var one = int.parse('1'); //String -> int
  String oneAsString = 1.toString(); //int -> String
  // The int type specifies the traditional bitwise shift (<<, >>), AND (&), and OR (|) operators.

  //String type
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  var s5 = '''
            You can create
            multi-line strings like this one.
            ''';
  var s6 = 'The + operator ' + 'works, as well.';
  var s7 = 'String ' 'concatenation' " works even over line breaks.";
  var s8 = r'In a raw string, not even \n gets special treatment.';

  //Lists
  var list = [1, 2, 3]; //Dart infers that list has type List<int>
  var constantList = const [1, 2, 3];
  //constantList.add(100);
  //This raises error as the above list is a compile time error and unmodifiable
  //late init.
  var list2 = [1, 2, 3];
  var list3 = [0, ...list];
  // If the expression to the right of the spread operator might be null, you can avoid exceptions by using a null-aware spread operator (...?)
  //var list;
  // var list2 = [0, ...?list];

  //Sets
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  description = 'Feijoada!';
  var names = <String>{}; //empty set
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.
  //  Set or map? The syntax for map literals is similar to that for set literals. Because map literals came first, {} defaults to the Map type. If you forget the type annotation on {} or the variable it’s assigned to,
  //  then Dart creates an object of type Map<dynamic, dynamic>.
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  //Maps
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  //You can create the same objects using a Map constructor
  var gifts2 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  //If you look for a key that isn’t in a map, you get a null in return
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
//lists,sets and maps all support spread operator as well as collection if and for

//You can pass a function as a parameter to another function
  nList.forEach(printElement);
  const fruitList = ['apples', 'bananas', 'oranges'];
  //Anonymous function
  fruitList.forEach((item) {
    print('${fruitList.indexOf(item)}: $item');
  });
  //If the function contains only a single expression or return statement,
  // you can shorten it using arrow notation.
  //list.forEach((item) => print('${list.indexOf(item)}: $item'));

  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

//learn about operators here https://dart.dev/guides/language/language-tour#operators

//control flow statements

//if-else-if
  var condition = true;
  if (condition) {
    print('true block');
  } else if (condition) {
    print('else if');
  } else {
    print('else');
  }
//for loop
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
//Closures inside of Dart’s for loops capture the value of the index,
// avoiding a common pitfall found in JavaScript. For example, consider
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

//If the object that you are iterating over is an Iterable (such as List or Set)
//and if you don’t need to know the current iteration counter,
//you can use the for-in form of iteration
//  for (var candidate in candidates) {
//   candidate.interview();
// }

//while loop
//   while (!isDone()) {
//   doSomething();
// }

//do-while
// do {
//   printLine();
// } while (!atEndOfPage());

//break and continue work almost the same way as in other languages

//switch case

//break is mandatory in a non-empty case,to allow fallthrough either
//keep the case empty or use continue with label for eg.
// var command = 'CLOSED';
// switch (command) {
//   case 'CLOSED':
//     executeClosed();
//     continue nowClosed;
//   // Continues executing at the nowClosed label.

//   nowClosed:
//   case 'NOW_CLOSED':
//     // Runs for both CLOSED and NOW_CLOSED.
//     executeNowClosed();
//     break;
// }
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print('closed');
      break;
    case 'PENDING':
      print('pending');
      break;
    case 'APPROVED':
      print('approved');
      break;
    case 'DENIED':
      print('denied');
      break;
    case 'OPEN':
      print('open');
      break;
    default:
      print('default');
  }

//Exceptions and its handling
//Here’s an example of throwing, or raising, an exception:
//  throw FormatException('Expected at least 1 section');
//catching an exception
  // try {
  //   breedMoreLlamas();
  // } on OutOfLlamasException {
  //   buyMoreLlamas();
  // }

// try {
//   breedMoreLlamas();
// } on OutOfLlamasException {
//   // A specific exception
//   buyMoreLlamas();
// } on Exception catch (e) {
//   // Anything else that is an exception
//   print('Unknown exception: $e');
// } catch (e,s) {
//   // No specified type, handles all
//The second param s is StackTrace
//   print('Something really unknown: $e');
// }
// finally {
  //finally always runs
//   // Always clean up, even if an exception is thrown.
//   cleanLlamaStalls();
// }
// As the preceding code shows, you can use either on or catch or both.
//Use on when you need to specify the exception type.
//Use catch when your exception handler needs the exception object.

//OOP
  var point = Point3D();
  point.x = 4; // Use the setter method for x.

  var nPoint1 = Point.origin();
  var nPoint2 = Point(10, 20);

//getter and setter demo
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);
  rect.right = 12;
  print(rect.left);

  print(description);
  print('Hello world: ${intro_to_dart.calculate()}!');
  print(number);
  print(name);
  print(n);
  print(s5);
  print(s7);
  print(list);
  print('length of the list ${list.length}');
  print('using spread operator ${list3}');
  print(halogens);
  print(gifts);
  print(isNoble(1));
  print(threeSum(b: 1, a: 2, c: 10));
  print(say('Tanay', 'DDSGS'));
  print(add2(10));
  print(point);
  print('nPoint1: ${nPoint1.x}, ${nPoint1.y}');
  print('nPoint2: ${nPoint2.x}, ${nPoint2.y}');
  printInteger(10);
}
