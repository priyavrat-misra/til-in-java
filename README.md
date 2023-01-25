<samp>
## Today I Learned in Java ...
###### Day 00
- everything is always passed by value.
- there can be more than one class defined in a file but only one of them can be public.
- if there are multiple classes defined in a single file, then compiling the file will lead to that many `.class` files.
- the class name and the file name can be different unless it's a public class. After compiling, the generated `.class` file(s) will be named after the class name but not the file name.
- `>>` is right shift operator.
- `>>>` is unsigned right shift operator.
- multiple `.class` files can be archived into one `.jar`file by running `jar cvf archive.jar c1.class c2.class`.
- `javap` can be used to view the generated Java bytecode.
```bash
javap -c HelloWorld.class
```
</samp>
