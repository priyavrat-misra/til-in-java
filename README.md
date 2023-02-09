<samp>

### Today I Learned in Java ...

<details>
<summary>Jump to Day</summary>
<a href="#day-00">00</a> •
<a href="#day-01">01</a> •
<a href="#day-02">02</a> •
<a href="#day-03">03</a> •
<a href="#day-04">04</a> •
<a href="#day-05">05</a> •
<a href="#day-06">06</a> •
<a href="#day-07">07</a> •
<a href="#day-08">08</a> •
<a href="#day-09">09</a> •
<a href="#day-10">10</a> •
<a href="#day-11">11</a> •
<a href="#day-12">12</a>
</details>

###### Day 00
- everything is always passed by value.
  - in case of primitive argument, the value is the primitive.
  - in case of object reference argument, the value is the memory address.
- there can be more than one class defined in a file but only one of them can be public.
- if there are multiple classes defined in a single file, then compiling the file will lead to those many `.class` files and they will have names of the corresponding classes.
- the class name and the file name can be different unless it's a public class.
- `>>` is right shift operator.
- `>>>` is unsigned right shift operator.
- multiple `.class` files can be archived into one `.jar` file by running `jar cvf archive.jar c1.class c2.class`.
- `javap` can be used to view the generated Java bytecode, `javap -c HelloWorld.class`.
###### Day 01
- if there is a class which uses other classes, then compiling that class will lead to compilation of all the classes it uses, as the compiler can't really know whether it is valid Java code without doing a depth first compilation first.
- compiling the class that contains `main()` will lead to compilation of the whole project, as it is the entry point.
- the compiled `.class` files need not be present in the current directory for a program to run, provided the classpath(s) is/are mentioned by using the `-cp` flag. By default, the classpath is set to current directory only.
- the class loader will look for `.class` files in the classpath during runtime.
- the `-cp` flag can also be used during compile time to let compiler know where the classes are present.
- a `.jar` file can also be a classpath i.e., the `-cp` flag may contain both directories as well as files.
- multiple classpaths can be separated by using <kbd>:</kbd> in Linux and <kbd>;</kbd> in Windows.
###### Day 02
- once the type of a variable is set it can not be changed later as Java is a _statically typed language_.
- if the variable type is a class, then the variable will be an object reference.
- there are 3 types of variables in Java:
  - **local variables**: declared in methods, constructors or blocks.
  - **instance variables**: declared in a class but outside any methods, constructors or blocks.
  - **class/static variables**: declared with the `static` keyword in a class but outside any methods, constructors or blocks. 
- _local variables_ must be initialized with a value before they are used.
###### Day 03
- `String` objects are immutable i.e., we cannot change the object itself, but we can change the reference to the object.
- `StringBuilder` and `StringBuffer` objects are mutable i.e, they can be used for dynamic string manipulation.
- in an expression if either operand in `+` is a `String` object, then Java converts the other operand to a `String` and creates a new `String` object by concatenating both operands.
- for `String`, each time a string is concatenated, a new object is created and it's the main reason why it's not recommended for cases where a lot of string manipulation is needed, instead using a `StringBuilder` or `StringBuffer` will be more efficient.
- operator overloading is not possible. Note that _string concatenation operator_ `+` is not an overloaded operator.
- the _string concatenation operator_ is just syntactic sugar, it is actually implemented through the use of the `StringBuilder` or `StringBuffer` classes' `append()` method.
- the compiler automatically converts an expression with _string concatenation operator_ into a series of calls to the `append()` method.
> ```java
> String s1 = "Hello";
> String s2 = "World";
> String s3 = s1 + " " + s2;
> ```
> is equivalent to:
> ```java
> String s1 = "Hello";
> String s2 = "World";
> StringBuilder sb = new StringBuilder();
> sb.append(s1).append(" ").append(s2);
> String s3 = sb.toString();
> ```
###### Day 04
- array and class variables are pointers/object references.
- a default initial value is assigned to each element of a newly allocated array if no initial value is specified. For numerical types it is `0`, for boolean it is `false` and for any pointer/object reference it is `null`.
- 2D arrays need not be rectangular, each row can be of different length. Helpful for symmetric matrices.
> ```java
> int[][] A = new int[3][4];  // rectangular
>
> int[][] B;                  // not rectangular
> B = new int[3][];
> B[0] = new int[1];
> B[1] = new int[2];
> B[2] = new int[5];
> ```
- we can copy an array using the `arraycopy` function. Like the output function `println`, `arraycopy` is provided in `java.lang.System`, so we must use the name `System.arraycopy`. The function has five parameters:
  - _src_: the source array
  - _srcPos_: the starting position in the source array
  - _dst_: the destination array
  - _dstPos_: the starting position in the destination array
  - _count_: number of values to copy
> ```java
> // to shift the values in an array:
> int[] A = {0, 1, 2, 3, 4};
> System.arraycopy(A, 0, A, 1, 4);
> ```
###### Day 05
- there are no `byte` or `short` literals but only `int` and `long` literals. <kbd>_</kbd> can be used to improve readability of the literals. We can make a literal `long` by appending  <kbd>L</kbd> or <kbd>l</kbd>.
- a `long` literal can't be assigned to an `byte`, `short` or `int` variable. The compiler will throw an "possible lossy conversion" error. Similarly a `double` literal can't be assigned to an `float` variable. 
- every primitive type has an associated boxed primitive, which have a lot of predefined functions and variables to make things easy.
> ```java
> int minValue = Integer.MIN_VALUE;
> int maxValue = Integer.MAX_VALUE;
> ```
- some numbers like 0.1, 0.2 etc. can not be accurately represented with IEEE 754 standard, as numbers represented in this format are a whole number times a power of two; rational numbers (such as 0.1, which is 1/10) whose denominator is not a power of two cannot be exactly represented.
###### Day 06
- instance and class/static variables are assigned a default value if nothing is assigned, for numerical types it is `0`, for boolean it is `false` and for any pointer/object reference it is `null`.
- assignment statements aren't possible in the class level but if they are a part of a declaration statement then it is possible.
> ```java
> class Example {
> 	int a, b = 10;
> 	a = 10;          // not possible
> }
> ```
> whereas,
> ```java
> class Example {
> 	int a;
> 	int b = a = 10;  // possible
> }
> ```
- expression and control flow statements aren't possible in the class level.
- only numeric to numeric casting is possible. Note that `char` also falls under numeric data type as it is represented by an unsigned `int`.
- we can not cast anything to `boolean` or vice-versa, as it is a non-numeric primitive (the only non-numeric primitive).
###### Day 07
- there are two types of type casting:
  - **implicit type casting**: will be done automatically
    * smaller to larger (widening conversion)
    * integer to floating point
  - **explicit type casting**: should be explicitly mentioned
    * larger to smaller (narrowing conversion)
    * `char` to `byte`/`short` and vice-versa requires explicit casting
- casting to `char` is always explicit as all the other numeric types can have negative values whereas `char` can't take negative values.
- if we are casting a value to a data type but the value is outside the range of the data type then JVM will discard all but the lower bytes of the value. For example,
> ```java
> byte b = (byte) 130;    // +130 (= 0b0000_0000_1000_0010)
> System.out.println(b);  // -126 (= 0b1000_0010)
> ``` 
- floating point to integer will always truncate the value.
> ```java
> int pi = (int) 3.14f;   // pi = 3
> char a = (char) 65.5;   // a = 'A'
> ```
- information loss due to implicit casting is also possible. Assigning a `int`/`long` to `float` or `long` to `double` could lead to loss of precision, usually the case when the numbers are large, as IEEE 754 fails to accurately represent large numbers.
> ```java
> int i = 1234567890;
> float f = i;
> System.out.println((int) f);
> ```
- for object references, bit depth is JVM specific i.e., in a JVM all object references will have the same size.
- there are various ways to initialize an array:
> ```java
> int[] a = {1, 1, 1};    // can only be used in a declaration statement
> int[] b = new int[]{1, 1, 1};
> int[] c = new int[3];   // or `int c[] = new int[3]`
> Arrays.fill(c, 1);
>
> int[][] d = {{1, 2}, {3, 4}, {5, 6}};
> int[][] e = new int[][]{{1, 2}, {3, 4}, {5, 6}};
> int[][] f = new int[3][2];
>
> int[] g = f[1];
> ```
###### Day 08
- we cannot have a static method access non-static members because we have no way of knowing which non-static members we should be accessing i.e., static methods have no access to state (instance variables/methods). Note this holds for `main` method too as it is `static`.
> ```java
> public class InstanceInStatic {
> 	int instanceVariable;
> 	void instanceMethod() {}
> 	static int staticVariable;
> 	static void staticMethod() {}
>
> 	public static void main(String[] args) {
> 		System.out.println(instanceVariable);
> 		instanceMethod();
> 		// will result in a compilation error:
> 		// "non-static variable/method can not be referenced from a static context"
>
> 		System.out.println(staticVariable);
> 		staticMethod();
> 		// possible
> 	}
> }
> ```
- we can access anything from an instance method, even `static` variables/methods.
- method overloading doesn't work if we only change the return type as return type is not included in the method signature.
###### Day 09
- when there are multiple methods with the same name, the compiler tries to find a method having parameters with the exact same data type, but if it isn't present then it tries to find a method that has the next larger data type.
> ```java
> void example(int a) {}
> void example(short a) {}
> 
> byte b = 1;
> example(b);  // will call `example(short)`
> ```
- the process of compiler picking the method to be invoked and subsequently JVM using that information at runtime is called **method binding**.
- we can pass zero or more parameters to a function by using *varargs* (variable-length arguments). It gives an illusion that the method is infinitely overloaded.
- a method can't have more than one *varargs* parameter.
- if the method has more than one parameter then the *varargs* parameter must be the last one.
- during invocation the corresponding argument can be an array of any size or it can be a sequence of any number of comma separated arguments, in this case the compiler automatically converges them into an array.
> ```java
> void example(int... items) {}
>
> example(1, 2, 3);  // = example(new int[]{1, 2, 3});
> ```
- `System.out.printf` uses *varargs* under the hood.
- we can use `main(String... args)` instead of `main(String[] args)`.
- if we have a bunch of overloaded methods and one of them is a *varargs* method then during method invocation the *varargs* method will be the last one to be matched.
- below is an invalid overload example:
> ```java
> void foo(boolean flag, int... items) {}
> void foo(boolean flag, int[] items) {}
> ```
###### Day 10
- the main purpose of the constructor is to initialize the object's state.
- the default constructor is inserted only if the class definition does not include a constructor.
- constructors doesn't return anything but they can have a `return`.
- `this()` is used to call an overloaded constructor, must be first statement in a constructor.
- we can't have more than one `this()` per constructor.
- calling the same constructor using `this()` will lead to a recursive invocation error. Another way this is possible if one constructor calls another and the called constructor calls the callee.
> ```java
> class Example {
>     Example() {
>         this(1);
>     }
>     Example(int i) {
>         this();
>     }
> }
> ```
- we can't have an instance variable inside `this()` invocation statement, it's because the variable is not yet initialized at that point in time, it'll result in `error: cannot reference variable before supertype constructor has been called`.
- there is an implicit call to the `Object` superclass after which the control comes to the subclass where all the instance variables get initialized.
- from **Java 11** onwards we can compile and execute a program by running a single command, `java Hello.java`. Compilation will happen in memory and so will not generate a `.class`.
###### Day 11
- arithmetic operators can't be used on `boolean`, but bitwise operators can be used.
- it is not possible to use bitwise not (`~`) with `boolean`, if such a behavior is needed then we will have to use logical not (`!`).
- bitwise operators can't be used on `float` and `double`.
- in an arithmetic operation, operands smaller than `int` are promoted to `int`.
> ```java
> System.out.println('a' + 'b');  // = 195
> ```
- if operands belong to different types, then the smaller type is promoted to larger type (true for ternary operators as well). Note if `long` and `float` are operands, `long` is promoted to `float` even though `long` is 64 bits and `float` is 32 bits. (*order of promotion: int -> long -> float -> double*)
- in a logical `&&` and `||` statement, the evaluation of right operand/statement is conditionally dependent on the evaluation of left operand/statement.
- `&&` can be used to prevent `NullPointerException`.
> ```java
> if (obj != null && obj.id == 1024)
>     ...
> ```
- according to the *Java Language Specification (JLS)*, `&`, `|` and `^` when applied on `boolean` operands are referred to as logical operators and not bitwise. In other words, the operators `&`, `|`, `^`, `~` are referred to as bitwise ONLY when they are applied on integer operands.
###### Day 12
- `switch` can take an `enum` or an integer (`byte`, `short`, `char`, `int`) expression or a corresponding wrapper class. At runtime when the variable is evaluated, the primitive value will be unwrapped and will be compared with the `case` labels.
- `switch` expression can also be a `String` (from *Java 7* onwards).
- as we can have object references as `switch` expression, there is a possibility of it evaluating to `null` leading to a `NullPointerException`.
- the value of the `case` label must be unique, non-null, within the range of the data type of the `switch` expression and should be known at compile time itself.
> ```java
> byte b = 2;
> switch (b) {
>     case 1:
>         ...
>         break;
>     case 128:    // error
>         ...
>         break;
> }
> ```
- a ternary expression can't be used as a standalone statement.
- `for (;;) { ... }` is same as `while (true) { ... }`.
- labelled `break` can be used to break out of a code block.
> ```java
> label: {
>     if (true)
>         break label;
>     System.out.println("This statement will not get executed.");
> }
> ```
- the label used with a `break` statement must be the label of the block in which the `break` statement appears.
###### Day 13
- it is possible to have a labelled `continue` which can only be associated with an enclosing loop statement unlike labelled `break` which can be associated with any block statement.
- classes can directly reference other classes in the package by directly using the class names, but to access a class from a different package we have to either use `import` or by using the package followed by dot followed by the class name.
> ```java
> import java.util.ArrayList;
> ...
> ArrayList A = new ArrayList();
> ```
> or,
> ```java
> java.util.ArrayList A = new java.util.ArrayList();
> ```
- `java.lang` is imported by default.
</samp>
