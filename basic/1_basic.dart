printInteger(int number) {
    print('The number is ${number}');
}

main() {
    var number = 10;
    printInteger(number);
}

// This is a comment

int a = 10;

String string = "test";

String string2 = 'test2';

dynamic abc = 5;

/**
 * Notes:
 * 
 * 1. Every thing created as a variable is a object derived from Object class. Even
 *    int, String, etc..
 * 
 * 2. Infer type is possible. Means we can define a variable as integer and later assign
 *    a string to it. To do that we need to define using dynamic keyword
 * 
 * 3. Supports Generic types. Ex. List<Abc> or List<int> or List<dynamic>
 */