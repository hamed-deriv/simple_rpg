import 'dart:io';

String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync()!;
}
