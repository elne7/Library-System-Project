void main(List<String> args) {
  print('................................'); // Starting output sign

  Library myLibrary = Library([], []); // Initializing the library

  // Adding some books to the library
  Book book1 = myLibrary.addBook(1, 'book1');
  Book book2 = myLibrary.addBook(2, 'book2');
  Book book3 = myLibrary.addBook(3, 'book3');
  Book book4 = myLibrary.addBook(4, 'book4');
  myLibrary.addBook(5, 'book5');

  print(
      ''); // This space to separate between the the related output and other output

  // Adding some users to the library
  myLibrary.addUser(1, 'Ahmed');
  myLibrary.addUser(2, 'Mohamed');
  myLibrary.addUser(3, 'Ali');

  print('');

  // Starting operations on the books
  myLibrary.borrowBook(book1);
  myLibrary.borrowBook(book2);
  myLibrary.borrowBook(book3);
  myLibrary.borrowBook(book1);
  myLibrary.returnBook(book2);
  myLibrary.returnBook(book4);

  print('');

  myLibrary.displayLibraryInfo(); // Showing the final state of the library
}

// Initializing the Book class
class Book {
  Book(this.id, this.title); // Creating the class constructor

  // Adding the class attributes
  int id;
  String title;
  bool borrowed = false;

  // Initializing the displaying info method for the Books
  void displayBookInfo() {
    print('The book title is $title with ID number $id');

    // Checking if the book is borrowed or not
    if (borrowed) {
      print('And This book is borrowed');
    } else {
      print('And This book is not borrowed');
    }
    print('..........................'); // Separate the output lines
  }
}

// Initializing the User class
class User {
  User(this.id, this.name);

  int id;
  String name;

  // Initializing the displaying info method for the Users
  void displayUserInfo() {
    print('The user name is $name with ID number $id');
    print('..........................');
  }
}

// Initializing the Library class
class Library {
  Library(this.books, this.users);

  // Initializing list of books and list of users
  List<Book> books;
  List<User> users;

  // Initializing the add book method
  Book addBook(int id, String title) {
    Book book = Book(id, title);
    books.add(book);
    print('$title has been added to the library.');
    return book;
  }

  // Initializing the add user method
  void addUser(int id, String name) {
    User user = User(id, name);
    users.add(user);
    print('$name has joined to the library community.');
  }

  // Initializing the borrow book method
  void borrowBook(Book book) {
    // Checking if the wanted book is borrowed or not
    if (book.borrowed) {
      print(
          'You are trying to borrow ${book.title} but this book is already borrowed');
    } else {
      book.borrowed = true;
      print('The ${book.title} has been borrowed');
    }
  }

  // Initializing the return book method
  void returnBook(Book book) {
    if (book.borrowed) {
      book.borrowed = false;
      print('The ${book.title} has been returned');
    } else {
      print(
          'You can\'t return ${book.title} because this book is already here');
    }
  }

  // // Initializing the display Info method for the library
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
