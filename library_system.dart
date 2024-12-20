void main(List<String> args) {
  print('................................');

  List<Book> libraryBooks = [];
  List<User> libraryUsers = [];

  Library myLibrary = Library(libraryBooks, libraryUsers);

  Book book1 = myLibrary.addBook(1, 'book1');
  Book book2 = myLibrary.addBook(2, 'book2');
  Book book3 = myLibrary.addBook(3, 'book3');
  Book book4 = myLibrary.addBook(4, 'book4');
  myLibrary.addBook(5, 'book5');

  print('');

  myLibrary.addUser(1, 'Ahmed');
  myLibrary.addUser(2, 'Mohamed');
  myLibrary.addUser(3, 'Ali');

  print('');

  myLibrary.borrowBook(book1);
  myLibrary.borrowBook(book2);
  myLibrary.borrowBook(book3);
  myLibrary.borrowBook(book1);
  myLibrary.returnBook(book2);
  myLibrary.returnBook(book4);

  print('');

  myLibrary.displayLibraryInfo();
}

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

  Book addBook(int id, String title) {
    Book book = Book(id, title);
    books.add(book);
    print('$title has been added to the library.');
    return book;
  }

  void addUser(int id, String name) {
    User user = User(id, name);
    users.add(user);
    print('$name has joined to the library community.');
  }

  void borrowBook(Book book) {
    if (book.borrowed) {
      print(
          'You are trying to borrow ${book.title} but this book is already borrowed');
    } else {
      book.borrowed = true;
      print('The ${book.title} has been borrowed');
    }
  }

  void returnBook(Book book) {
    if (book.borrowed) {
      book.borrowed = false;
      print('The ${book.title} has been returned');
    } else {
      print(
          'You can\'t return ${book.title} because this book is already here');
    }
  }

  void displayLibraryInfo() {
    print('The library has ${books.length} book which are: ');
    for (Book book in books) {
      book.displayBookInfo();
    }

    print('And also the library has ${users.length} users which are: ');
    for (User user in users) {
      user.displayUserInfo();
    }
  }
}
