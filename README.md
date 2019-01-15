# Haskell-Playground

A basic project setup in Haskell.
Namely used for [Comp 520 - Compiler Design](https://www.mcgill.ca/study/2018-2019/courses/comp-520)

---

## Recommendation

Use IntelliJ along with the [Haskell plugin](https://github.com/rikvdkleij/intellij-haskell).
Note the readme if you want to install the newer beta versions.

An alternative is Visual Studio Code along with the [Haskell Language Server](https://marketplace.visualstudio.com/items?itemName=alanz.vscode-hie-server).
It requires installing the [IDE Engine](https://github.com/haskell/haskell-ide-engine), 
which as of now involves building it yourself. This didn't work too well for me.

---

## Compiler Base

This sample uses [megaparsec](https://github.com/mrkkrp/megaparsec).

And showcases the example from the [simple imperative language tutorial](https://markkarpov.com/megaparsec/parsing-simple-imperative-language.html).

To summarize, defining the rules and types allows you to produce outputs like so:

```
-- Sample compiler
--------------------------------------------------
if 5 then x := 5 else x := 5
1:6:
  |
1 | if 5 then x := 5 else x := 5
  |      ^
unexpected 't'
expecting '*', '+', '-', '/', '<', or '>'
--------------------------------------------------
--------------------------------------------------
if true then x := 5
--------------------------------------------------
1:20:
  |
1 | if true then x := 5
  |                    ^
unexpected end of input
expecting "else", '*', '+', '-', '/', ';', or digit
--------------------------------------------------
--------------------------------------------------
if true then x := 5 else x := 5
--------------------------------------------------
If (BoolConst True) (Assign "x" (IntConst 5)) (Assign "x" (IntConst 5))
```