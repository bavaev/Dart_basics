import 'dart:io';

import './classes/delimetersCalculator.dart';
import './classes/binary.dart';
import './classes/findNumbers.dart';
import './classes/countWords.dart';
import './classes/repeat.dart';
import './classes/point_and_ root.dart';
import './classes/user.dart';

void main() {
  print('Введите номер задания: ');
  String? numberTask = stdin.readLineSync();

  if (numberTask == '1') {
    print('Задание №1');
    print('Введите номер метода: ');
    String? numberMethod = stdin.readLineSync();

    if (numberMethod == '1') {
      print('Вычисляем НОД');
      print('Введите два числа: ');
      String? number1 = stdin.readLineSync();
      String? number2 = stdin.readLineSync();

      if (number1 != null && number2 != null) {
        int a = int.parse(number1);
        int b = int.parse(number2);

        print(DelimetersCalculator.gcd(a, b));
      }
    } else if (numberMethod == '2') {
      print('Вычисляем НОК');
      print('Введите два числа: ');
      String? number1 = stdin.readLineSync();
      String? number2 = stdin.readLineSync();

      if (number1 != null && number2 != null) {
        int a = int.parse(number1);
        int b = int.parse(number2);

        print(DelimetersCalculator.lcm(a, b).toInt());
      }
    } else if (numberMethod == '3') {
      print('Разбиваем число на простые множители');
      print('Введите число: ');
      String? number = stdin.readLineSync();

      if (number != null) {
        int a = int.parse(number);

        DelimetersCalculator.cn(a);
      }
    }
  } else if (numberTask == '2') {
    print('Задание №2');
    print('Введите число: ');
    String? number = stdin.readLineSync();

    if (number != null) {
      int a = int.parse(number);

      Binary.bin(a);
    }
  } else if (numberTask == '3') {
    print('Задание №3');
    String? text = stdin.readLineSync();

    if (text != null) {
      FindNumbers.search(text);
    }
  } else if (numberTask == '4') {
    print('Задание №4');
    List<String> listWords = [];
    while (true) {
      String? text = stdin.readLineSync();
      if (text == '-1') break;
      if (text != null) {
        listWords.add(text);
      }
    }
    CountWords.count(listWords);
  } else if (numberTask == '5') {
    print('Задание №5');
    String? text = stdin.readLineSync();

    if (text != null) {
      Repeat.search(text);
    }
  } else if (numberTask == '6') {
    print('Задание №6');
    print('Введите три числа: ');
    List<int> listPoint = [];
    for (var i = 0; i < 3; i++) {
      String? text = stdin.readLineSync();

      if (text != null) {
        int point = int.parse(text);
        listPoint.add(point);
      }
    }
    Point.distanceTo(listPoint);
  } else if (numberTask == '7') {
    print('Задание №7');
    print('Введите число из которого Вы хотите извлечь корень: ');
    String? text = stdin.readLineSync();
    print('Введите целое число n(степень): ');
    String? text2 = stdin.readLineSync();
    if (text != null && text2 != null) {
      int number = int.parse(text);
      int degree = int.parse(text2);

      print(number.nth_root(degree));
    }
  } else if (numberTask == '8') {
    print('Задание №8');
    List<User> usersList = [];
    print('Введите add для добавление нового пользователя,');
    print('Введите remove для удаления пользователя,');
    print('Введите list для вывода всех пользователеей,');
    print('Введите "-1" для выхода');
    String? text = stdin.readLineSync();
    while (text != '-1') {
      if (text == 'add') {
        print('Введите Email нового пользователя: ');
        String? email = stdin.readLineSync();
        print(
            'Если Вы хотите сделать этого пользователя Админом, введите слово admin: ');
        String? admin = stdin.readLineSync();
        if (admin == 'admin') {
          UserManager add = UserManager(email.toString(), usersList);
          add.addAdmin();
        } else {
          UserManager add = UserManager(email.toString(), usersList);
          add.addUser();
        }
      } else if (text == 'remove') {
        print('Введите Email чтобы удалить пользователя: ');
        String? email = stdin.readLineSync();
        User newUser = User(email);
        UserManager remove = UserManager(email.toString(), usersList);
        remove.removeUser();
      } else if (text == 'list') {
        UserManager list = UserManager(''.toString(), usersList);
        list.list();
      }
      print('Введите add для добавление нового пользователя,');
      print('Введите remove для удаления пользователя,');
      print('Введите list для вывода всех пользователеей,');
      print('Введите "-1" для выхода');
      text = stdin.readLineSync();
    }
  }
}
