import 'dart:isolate';

// Concurrency is the execution of several instruction sequences at the same time.
//It involves performing more than one task simultaneously.
// Dart uses Isolates as a tool for doing works in parallel.
//random function
void foo(var message) {
  print('execution from foo ... the message is :${message}');
}

void main() {
  //isolate and run in parrrelle;

  Isolate.spawn(foo, 'Hellooooooooo!!');
//   Here, the spawn method of the Isolate class facilitates running a function, foo, in parallel with
//   the rest of our code. The spawn function takes two parameters
// 1.the function to be spawned,
//2. object that will be passed to the spawned function.
  Isolate.spawn(foo, 'Greetings!!');
  Isolate.spawn(foo, 'Welcome!!');
  Isolate.spawn(foo, 'Welcome!2!');
  Isolate.spawn(foo, 'Welcome!3!');
  Isolate.spawn(foo, 'Welcome!4!');

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');
}
