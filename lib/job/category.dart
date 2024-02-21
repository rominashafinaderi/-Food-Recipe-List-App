class Category {
  String? label;
  String? categoryClass;
  String? tag;

  Category({this.label, this.categoryClass, this.tag});

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        label: json['label'] as String?,
        categoryClass: json['__CLASS__'] as String?,
        tag: json['tag'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        '__CLASS__': categoryClass,
        'tag': tag,
      };
}
