class User {
  final email;

  User(this.email);
}

class AdminUser extends User with getMailSystem {
  AdminUser(String email) : super(email);
}

// class GeneralUser extends User {}

mixin getMailSystem on User {
  String get emailSplit => email.split('@')[1];
}

class UserManager<T extends String> {
  T userEmail;
  List<dynamic> usersList;

  UserManager(this.userEmail, this.usersList);

  void addUser() {
    if (!this.usersList.any((user) => user.email == this.userEmail)) {
      this.usersList.add(User(this.userEmail));
    } else {
      print('Пользователь с таким Email уже существует!');
    }
  }

  void addAdmin() {
    if (!this.usersList.any((user) => user.email == this.userEmail)) {
      this.usersList.add(AdminUser(this.userEmail));
    } else {
      print('Пользователь с таким Email уже существует!');
    }
  }

  void removeUser() {
    if (this.usersList.any((user) => user.email == this.userEmail)) {
      this.usersList.removeWhere((user) => user.email == this.userEmail);
      print(this.usersList.length);
    } else {
      print('Пользователя с таким Email нет в базе!');
    }
  }

  void list() {
    if (usersList.isEmpty) {
      print('Список пользователей пуст');
    }
    this.usersList.forEach((user) =>
        user.runtimeType == User ? print(user.email) : print(user.emailSplit));
    print(this.usersList.length);
  }
}
