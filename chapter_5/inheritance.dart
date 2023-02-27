class Media {
  String title = '';
  String type = '';

  Media() {
    type = 'Class';
  }

  void setMediaTitle(String mediaTitle) {
    title = mediaTitle;
  }

  String getMediaTitle() {
    return title;
  }

  String getMediaType() {
    return type;
  }
}

class Book extends Media {
  String author = '';
  String isbn = '';

  Book() {
    type = 'Subclass';
  }

  void setBookAuthor(String bookAuthor) {
    author = bookAuthor;
  }

  void setBookISBN(String bookISBN) {
    isbn = bookISBN;
  }

  String getBookTitle() {
    return title;
  }

  String getBookAuthor() {
    return author;
  }

  String getBookISBN() {
    return isbn;
  }
}

void main(List<String> args) {
  var myMedia = Media();

  myMedia.setMediaTitle('Tron');
  print('Title: ${myMedia.getMediaTitle()}');
  print('Type: ${myMedia.getMediaType()}');

  var myBook = Book();
  myBook.setMediaTitle('Jungle Book');
  myBook.setBookAuthor('R Kipling');
  myBook.setBookISBN('9781503332546');
  print('Title: ${myBook.getBookTitle()}');
  print('Author: ${myBook.getBookAuthor()}');
  print('ISBN: ${myBook.getBookISBN()}');
  print('Type: ${myBook.getMediaType()}');
}
