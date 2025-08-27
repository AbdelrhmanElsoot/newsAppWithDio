class TopHeadlineModel {
  String? stutus;
  int? totalResult;
  List<Article>? articles = [];
  TopHeadlineModel({this.stutus, this.totalResult, this.articles});
  TopHeadlineModel.fromjson(Map<String, dynamic> json) {
    stutus = json['status'];
    totalResult = json['totalResults'];
    if (json['articles'] != null) {
      for (var article in json['articles']) {
        articles!.add(Article.fromjson(article));
      }
    }
  }
}

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  Article.fromjson(Map<String, dynamic> json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
}

class Source {
  String? id;
  String? name;
  Source({this.id, this.name});
  Source.fromJson(Map<String, dynamic> json) {
    id = json['id '];
    name = json['name'];
  }
}
