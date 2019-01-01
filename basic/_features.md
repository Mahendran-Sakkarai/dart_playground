1. Every thing created as a variable is a object derived from Object class. Even
    int, String, etc..
2. Infer type is possible. Means we can define a variable as integer and later assign
    a string to it. To do that we need to define using dynamic keyword
3. Supports Generic types. Ex. List<Abc> or List<int> or List<dynamic>
4. Top level function supported. Ex. main() or static methods.
5. Function inside function are supported.(nested or local functions)
6. Supports top level variables as well as class and function bounded variables.
7. Doesn't support access specifier. if starts with '_' means private.
8. Statment(which don't has runtime vals) contains expression(Which has runtime values). Ex.            Conditional Expressions(cond?exp1:exp2) and statement(if_else)