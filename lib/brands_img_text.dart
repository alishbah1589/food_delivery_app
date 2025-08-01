// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BrandsImgText {
  final String image;
  final String title;
  BrandsImgText({
    required this.image,
    required this.title,
  });

  BrandsImgText copyWith({
    String? image,
    String? title,
  }) {
    return BrandsImgText(
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

  factory BrandsImgText.fromMap(Map<String, dynamic> map) {
    return BrandsImgText(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BrandsImgText.fromJson(String source) =>
      BrandsImgText.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BrandsImgText(image: $image, title: $title)';

  @override
  bool operator ==(covariant BrandsImgText other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}
