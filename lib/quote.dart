class Quote{

  Quote({this.text = '', this.author = ''});
  String text;
  String author;

  @override
  String toString() {
    return 'Quote{text: $text} {author: $author}';
  }
}