import 'category.dart';
import 'company.dart';
import 'location.dart';

class Result {
  double? salaryMin;
  double? salaryMax;
  String? adref;
  double? latitude;
  String? id;
  double? longitude;
  String? description;
  String? created;
  Company? company;
  Category? category;
  String? redirectUrl;
  String? resultClass;
  Location? location;
  String? title;
  String? salaryIsPredicted;
  String? contractTime;
  String? contractType;

  Result({
    this.salaryMin,
    this.salaryMax,
    this.adref,
    this.latitude,
    this.id,
    this.longitude,
    this.description,
    this.created,
    this.company,
    this.category,
    this.redirectUrl,
    this.resultClass,
    this.location,
    this.title,
    this.salaryIsPredicted,
    this.contractTime,
    this.contractType,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        salaryMin: (json['salary_min'] as num?)?.toDouble(),
        salaryMax: (json['salary_max'] as num?)?.toDouble(),
        adref: json['adref'] as String?,
        latitude: (json['latitude'] as num?)?.toDouble(),
        id: json['id'] as String?,
        longitude: (json['longitude'] as num?)?.toDouble(),
        description: json['description'] as String?,
        created: json['created'] as String?,
        company: json['company'] == null
            ? null
            : Company.fromJson(json['company'] as Map<String, dynamic>),
        category: json['category'] == null
            ? null
            : Category.fromJson(json['category'] as Map<String, dynamic>),
        redirectUrl: json['redirect_url'] as String?,
        resultClass: json['__CLASS__'] as String?,
        location: json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
        title: json['title'] as String?,
        salaryIsPredicted: json['salary_is_predicted'] as String?,
        contractTime: json['contract_time'] as String?,
        contractType: json['contract_type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'salary_min': salaryMin,
        'salary_max': salaryMax,
        'adref': adref,
        'latitude': latitude,
        'id': id,
        'longitude': longitude,
        'description': description,
        'created': created,
        'company': company?.toJson(),
        'category': category?.toJson(),
        'redirect_url': redirectUrl,
        '__CLASS__': resultClass,
        'location': location?.toJson(),
        'title': title,
        'salary_is_predicted': salaryIsPredicted,
        'contract_time': contractTime,
        'contract_type': contractType,
      };
}
