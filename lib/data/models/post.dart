class Post {
  final int id;
  final String body;
  final String title;

  Post.fromJson(Map json)
      : title = json['title'],
        body = json['body'],
        id = json['id'];
}
