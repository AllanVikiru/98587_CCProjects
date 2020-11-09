## Labs 1 and 2: Lexical Analysis in C++ and Flex

> Projects

[Simple Lexer (C++)](https://github.com/AllanVikiru/98587_CCProjects/tree/lex/Simple%20Lexer) : has 2 main scripts - ```lexical_analyser.cpp``` that defines a lexer in C++ and ```lexical_analyser.exe``` as it's repective program. The second main script is ```lexer.l``` which defines the same lexer but in [Fast Lexical Analyser Generator(Flex)](https://en.wikipedia.org/wiki/Flex_(lexical_analyser_generator)). ```lex.yy.c``` is the file compiled in GCC and is linked to the output ```a.exe```. There is a text file containing sample code for analysis - ```code.txt``` 

[Output Analysis (Flex)](https://github.com/AllanVikiru/98587_CCProjects/tree/lex/Output%20Analysis) : here, there is a short description of the output of the simple lexer in the first project. This is in ```Output Description.docx```. There's also a Flex script - ```count.l``` which counts the number of characters in a specified file. ```lex.yy.c``` is the file compiled in GCC and is linked to the output ```a.exe```. ```code.txt``` - is also included as a sample file for character counting. 


> Prerequisites

[Visual Studio Code Extension for C/C++](https://code.visualstudio.com/docs/languages/cpp)

[Code Runner Visual Studio Code Extension](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)

[MinGW for Windows - GCC Compiler for C/C++](https://www.youtube.com/watch?v=sXW2VLrQ3Bs)

[Flex for Windows](http://gnuwin32.sourceforge.net/packages/flex.htm) : Follow the link and download the 'Complete package, except sources' setup [file](http://gnuwin32.sourceforge.net/downlinks/flex.php). After, select the path to the binary files e.g. ```C:\GnuWin32\bin``` and include to a system PATH environment variable. [(Tutorial)](https://helpdeskgeek.com/windows-10/add-windows-path-environment-variable/) Verify the installation by running ```flex --version```, it should return the version number of the software installed.


##### OS: Windows
##### IDE: Visual Studio Code

> Program Execution

```
C++

Directly run the .exe file through the command prompt; by directing to the folder location of the project and entering lexical_analyser.exe.

OR 

On Visual Studio Code, open lexical_analyser.cpp and click the 'Play' button to your top right or enter 'Ctrl+Alt+N'
   
```

```
Flex

On the command prompt, enter:

1. flex filename.l e.g. flex hello.l
2. gcc lex.yy.c
3. a.exe 
            
```
