// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CardItem {
  final String image;
  final String title;
  CardItem({
    required this.image,
    required this.title,
  });

  CardItem copyWith({
    String? image,
    String? title,
  }) {
    return CardItem(
      image: image ?? this.image,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
    };
  }

  factory CardItem.fromMap(Map<String, dynamic> map) {
    return CardItem(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CardItem.fromJson(String source) =>
      CardItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CardItem(image: $image, title: $title)';

  @override
  bool operator ==(covariant CardItem other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}
