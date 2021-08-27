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
  printInteger(10);
}
