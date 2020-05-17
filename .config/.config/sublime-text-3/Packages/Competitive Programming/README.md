# CompetitiveProgramming
A Sublime Test plugin that automatically runs test cases when a program is ran.

## How it Works

This plugin creates a new builder for C++11 and when you run your code, Command+Shift+b (OS X) Control+Shift+b (Linux/Windows), it runs your program against all *.in files in the same directory as your source code. This allows you to quickly run your code against many test cases and it will timeout if a test case takes too long.

This is helpful in the application of competitive programming since it allows you to quickly develop code and run against many test cases.

## Supported Languages

* C++11

## How to Install

### Package Controll

The easiest way to install this plugin is through [Package Control](http://wbond.net/sublime\_packages/package\_control). It's also nice because it keeps your plugins up to date.

 * First install Package Control, if you just did this then you should restart Sublime
 * Open up the Command Palette (Command+Shift+p on OS X, Control+Shift+p on Linux/Windows)
 * Select 'Package Control: Install Package'
 * Select 'Competitive Programming'
