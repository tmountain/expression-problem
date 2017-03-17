This repo contains examples related to the expression problem.

http://eli.thegreenplace.net/2016/the-expression-problem-and-its-solutions/

```
OOP approach:

Animal operations (via interface):
   - walk
   - speak

public interface Animal {
    public String speak();
    public walk();
}

Animal types (classes bundling data and operations):
   - cat
   - dog
   - pig

public class Cat implements Animal { ... }

Adding a new method via the interface
requires you to visit every type of animal
and implement the desired functionality.

What if the classes you are working on are
walled off (i.e., precompiled?). Hacks!

Functional approach:

Animal types (data [preferrably typed]):

type Animal = Cat | Dog | Pig

Animal operations (via functions):

speak : Animal -> String
speak animal =
    case animal of
        Cat -> "meow"
        ...
```
