void main(List<String> args) {}

class Book {
  Book(this.id, this.title);

  int id;
  String title;
  bool borrowed = false;

  void displayBookInfo() {
    print('The book title is $title with ID number $id');
    if (borrowed) {
      print('And This book is borrowed');
    } else {
      print('And This book is not borrowed');
    }
    print('..........................');
  }
}

class User {
  User(this.id, this.name);

  int id;
  String name;

  void displayUserInfo() {
    print('The user name is $name with ID number $id');
    print('..........................');
  }
}

class Library {
  Library(this.books, this.users);

  List<Book> books;
  List<User> users;

  void addBook(int id, String title) {
    Book book = Book(id, title);
    books.add(book);
    print('$title book has been added to the library.');
  }

  void addUser(int id, String name) {
    User user = User(id, name);
    users.add(user);
    print('$name has joined to the library community.');
  }

  void borrowBook(Book book) {
    if (book.borrowed) {
      print('This book is borrowed');
    } else {
      book.borrowed = true;
      print('The ${book.title} book has been borrowed');
    }
  }

  void returnBook(Book book) {
    if (book.borrowed) {
      book.borrowed = false;
      print('The ${book.title} book has been returned');
    } else {
      print('This book is already here');
    }
  }

  void displayLibraryInfo() {
    print('The library has ${books.length} book which are: ');
    for (Book book in books) {
      book.displayBookInfo();
    }

    print('.....................');

    print('And also has ${users.length} user which are: ');
    for (User user in users) {
      user.displayUserInfo();
    }
  }
}
