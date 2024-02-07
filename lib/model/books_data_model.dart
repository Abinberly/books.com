
class BooksDataModel {
  BooksDataModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.image,
    required this.url,
  });
  late final String id;
  late final String title;
  late final String subtitle;
  late final String authors;
  late final String image;
  late final String url;
  
  BooksDataModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    authors = json['authors'];
    image = json['image'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['authors'] = authors;
    data['image'] = image;
    data['url'] = url;
    return data;
  }
}