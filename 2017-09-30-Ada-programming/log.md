# Ada programming

Re-learning the ADA language :-)
I am using the examples of the book: **"Ada. Problem Solving and Program Design"**, by Michael B. Feldman and Elliot B. Koffman

I've also find a lot of information about Ada programming [In this link](https://en.wikibooks.org/wiki/Ada_Programming/Basic)

## Log: 2017-09-30

### Hello world program

This is the Ada hello world example. **Program 1.1** (Page 22)

```ada
with Text_IO;
procedure Hello is

begin
  Text_IO.Put (Item => "Hello there.");
  Text_IO.Put (Item => "We hopeyou enjoy studying Ada!");
  Text_IO.New_Line;

end Hello;
```

Para compilarlo y probarlo ejecutamos la siguiente instrucción en la terminal:

```bash
$ gnat make hello
gcc-5 -c hello.adb
gnatbind-5 -x hello.ali
gnatlink-5 hello.ali
```

Esto nos genera el **fichero ejecutable** hello:

```bash
$ ./hello
Hello there.We hopeyou enjoy studying Ada!
```

para **limpiar** hacemos:

```bash
$ gnat clean hello
"./hello.ali" has been deleted
"./hello.o" has been deleted
"hello" has been deleted
```

### Playing with the hello world

This is the second example. I've just changed the strings:

```ada
with Text_IO;
procedure Hello1 is

begin
  Text_IO.Put (Item => "This is a simple menu");
  Text_IO.New_Line;
  Text_IO.Put (Item => "---------------------");
  Text_IO.New_Line;
  Text_IO.Put (Item => "1.- Testing...");
end Hello1;
```

When **executed** we get:

```bash
./hello1
This is a simple menu
---------------------
1.- Testing...

```
[In this book](https://en.wikibooks.org/wiki/Ada_Programming/Basic), stored at wikibooks, I've found that they use a different style (maybe a modern one)

This is a modified version of the hello world program they use:

```ada
with Ada.Text_IO;

procedure Hello2 is
begin
  Ada.Text_IO.Put_Line("Hello world!");
  Ada.Text_IO.Put_Line("this is line 2");
  Ada.Text_IO.Put (Item => "hello");
  Ada.text_IO.Put (Item => "hello2"); -- No new line added
end Hello2;
```

Instead of using directly the Text_IO, the use **Ada.Text_IO**

They also introduce the method **Put_line** that includes a new line at the end
