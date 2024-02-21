class Company {
  String? companyClass;
  String? displayName;

  Company({this.companyClass, this.displayName});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        companyClass: json['__CLASS__'] as String?,
        displayName: json['display_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '__CLASS__': companyClass,
        'display_name': displayName,
      };
}
