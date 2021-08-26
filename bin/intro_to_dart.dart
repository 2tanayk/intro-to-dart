import 'package:intro_to_dart/intro_to_dart.dart' as intro_to_dart;

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
var _nobleGases = {
  // Key:    Value
  1: 'partridge',
  2: 'turtledoves',
  3: 'golden rings'
};

// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
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
/// Sets the [bold] and [hidden] flags ...
// void enableFlags({bool bold = false, bool hidden = false}) {...}
// bold will be true; hidden will be false.
// enableFlags(bold: true);


void main(List<String> arguments) {
  var number = 42; // Declare and initialize a variable, type inferred to int
  var y = 1.1; //double
  num x = 1; // x can have both int and double values
  double z =
      1; //Integer literals are automatically converted to doubles when necessary, Equivalent to double z = 1.0.
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
  printInteger(10);
}
