// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Brands {
  final String image;
  final String title;
  final String time;
  Brands({
    required this.image,
    required this.title,
    required this.time,
  });

  Brands copyWith({
    String? image,
    String? title,
    String? time,
  }) {
    return Brands(
      image: image ?? this.image,
      title: title ?? this.title,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'time': time,
    };
  }

  factory Brands.fromMap(Map<String, dynamic> map) {
    return Brands(
      image: map['image'] as String,
      title: map['title'] as String,
      time: map['time'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Brands.fromJson(String source) =>
      Brands.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Brands(image: $image, title: $title, time: $time)';

  @override
  bool operator ==(covariant Brands other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title && other.time == time;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode ^ time.hashCode;
}
