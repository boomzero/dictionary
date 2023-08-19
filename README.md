# Word Definition Finder

Have you ever read a text and wondered what some of the words mean? Do you want to learn new words and expand your vocabulary? If so, this project is for you!

This project is a simple and fun C++ program that takes a text input from the user and prints out the definitions of the words in the input using an online dictionary API. You can use it to look up the meanings of any words you encounter in your reading, or just to play around with different words and learn something new.

## How to use it

To use this program, you need to have a C++ compiler and cmake installed on your system. We use the following libraries:

- CPR (C++ Requests): A library for making HTTP requests in C++.
- JSON for Modern C++: A library for working with JSON data in C++.

You don't need to manually download and install these libraries, as cmake can automatically fetch them for you using FetchContent, a built-in module that can download and populate dependencies at configure-time .

To build the program using cmake, follow these steps:

- Create a build directory and change into it: `mkdir build && cd build`
- Run cmake to configure the project and fetch the dependencies: `cmake ..`
- Run make to build the program: `make`
- Run the program: `./Dict`

The program will prompt you to enter a text input. You can type or paste any text you want, as long as it is in English. When you are done, press Enter to submit your input. The program will then print out the definitions of the words in your input using an online dictionary API. If a word is not found in the dictionary, the program will print "not found" instead. To exit the program, enter "0" as your input.

I hope this readme helps you understand and use the Word Definition Finder project. I think it is a very interesting and useful project that can help you learn new words and improve your vocabulary. 😊

Do you have any feedback or questions about the readme or the project? I would love to hear from you! 😊
