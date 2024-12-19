void main(List<String> args) {}

class Book {
  Book(this.id, this.title, this.borrowed);

  int id;
  String title;
  bool borrowed;

  void displayInfo(int id, String title, bool borrowed) {
    print('The book id is $id');
    print('The book title is $title');
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

  void displayInfo(int id, String name) {
    print('The user id is $id');
    print('The user name is $name');
    print('..........................');
  }
}

class Library {
  Library(this.books, this.users);

  List<Book> books;
  List<User> users;

  void addBook (Book book){
    books.add(book);
  }
}
