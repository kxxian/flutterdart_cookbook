abstract class Media {
  late String myId;
  late String myTitle;
  late String myType;

  void setMediaTitle(String mediaTitle);
  String getMediaTitle();

  void setMediaType(String mediaType);
  String getMediaType();

  void setMediaId(String mediaId);
  String getMediaId();
}

class Book implements Media {
  @override
  late String myId;
  @override
  late String myTitle;
  @override
  late String myType;

  @override
  void setMediaTitle(String mediaTitle) {
    myTitle = mediaTitle;
  }

  @override
  String getMediaTitle() {
    return myTitle;
  }

  @override
  void setMediaType(String mediaType) {
    myType = mediaType;
  }

  @override
  String getMediaType() {
    return myType;
  }

  @override
  void setMediaId(String mediaId) {
    myId = mediaId;
  }

  @override
  String getMediaId() {
    return myId;
  }

  Book(String mediaTitle, String mediaType, String mediaId) {
    myTitle = mediaTitle;
    myType = mediaType;
    myId = mediaId;
  }
}

void main(List<String> args) {
  final Book myBook =
      Book('Serveless Computing with Google Cloud', 'Book', 'ISBN-111');

  print(myBook.getMediaTitle());
  print(myBook.getMediaType());
  print(myBook.getMediaId());
}
