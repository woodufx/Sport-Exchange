class Article {
  final String articleId;
  final String name;
  final String text;
  final String date;
  final String imageUrl;
  final List<String> categories;

  Article({
    required this.articleId,
    required this.name,
    required this.text,
    required this.date,
    required this.imageUrl,
    required this.categories,
  });
}
