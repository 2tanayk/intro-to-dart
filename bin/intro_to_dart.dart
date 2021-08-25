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
const bar = 1000000;//compile time constant
// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

void main(List<String> arguments) {
  var number = 42; // Declare and initialize a variable, type inferred to int
  String name = 'Tanay';
  int? fk;//nullable type
  description = 'Feijoada!';
  print(description);
  print('Hello world: ${intro_to_dart.calculate()}!');
  print(number);
  print(name);
  print(fk);
  printInteger(10);
}
