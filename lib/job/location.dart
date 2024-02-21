class Location {
  List<String>? area;
  String? locationClass;
  String? displayName;

  Location({this.area, this.locationClass, this.displayName});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        area: json['area'] as List<String>?,
        locationClass: json['__CLASS__'] as String?,
        displayName: json['display_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'area': area,
        '__CLASS__': locationClass,
        'display_name': displayName,
      };
}
