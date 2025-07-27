import 'dart:convert';

class ContainerImgModel {
  String imgUrl;
  String title;
  int price;
  ContainerImgModel({
    required this.imgUrl,
    required this.title,
    required this.price,
  });

  ContainerImgModel copyWith({
    String? imgUrl,
    String? title,
    int? price,
  }) {
    return ContainerImgModel(
      imgUrl: imgUrl ?? this.imgUrl,
      title: title ?? this.title,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imgUrl': imgUrl,
      'title': title,
      'price': price,
    };
  }

  factory ContainerImgModel.fromMap(Map<String, dynamic> map) {
    return ContainerImgModel(
      imgUrl: map['imgUrl'] as String,
      title: map['title'] as String,
      price: map['price'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContainerImgModel.fromJson(String source) =>
      ContainerImgModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ContainerImgModel(imgUrl: $imgUrl, title: $title, price: $price)';

  @override
  bool operator ==(covariant ContainerImgModel other) {
    if (identical(this, other)) return true;

    return other.imgUrl == imgUrl &&
        other.title == title &&
        other.price == price;
  }

  @override
  int get hashCode => imgUrl.hashCode ^ title.hashCode ^ price.hashCode;
}
