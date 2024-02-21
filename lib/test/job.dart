// import 'fluttr/ma';
// class job {
//   String _sCLASS;
//   double _mean;
//   int _count;
//   List<Results> _results;

//   job({String sCLASS, double mean, int count, List<Results> results}) {
//     this._sCLASS = sCLASS;
//     this._mean = mean;
//     this._count = count;
//     this._results = results;
//   }

//   String get sCLASS => _sCLASS;
//   set sCLASS(String sCLASS) => _sCLASS = sCLASS;
//   double get mean => _mean;
//   set mean(double mean) => _mean = mean;
//   int get count => _count;
//   set count(int count) => _count = count;
//   List<Results> get results => _results;
//   set results(List<Results> results) => _results = results;

//   job.fromJson(Map<String, dynamic> json) {
//     _sCLASS = json['__CLASS__'];
//     _mean = json['mean'];
//     _count = json['count'];
//     if (json['results'] != null) {
//       _results = new List<Results>();
//       json['results'].forEach((v) {
//         _results.add(new Results.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['__CLASS__'] = this._sCLASS;
//     data['mean'] = this._mean;
//     data['count'] = this._count;
//     if (this._results != null) {
//       data['results'] = this._results.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Results {
//   double _salaryMin;
//   double _salaryMax;
//   String _adref;
//   double _latitude;
//   String _id;
//   double _longitude;
//   String _description;
//   String _created;
//   Company _company;
//   Category _category;
//   String _redirectUrl;
//   String _sCLASS;
//   Location _location;
//   String _title;
//   String _salaryIsPredicted;
//   String _contractTime;
//   String _contractType;

//   Results(
//       {double salaryMin,
//       double salaryMax,
//       String adref,
//       double latitude,
//       String id,
//       double longitude,
//       String description,
//       String created,
//       Company company,
//       Category category,
//       String redirectUrl,
//       String sCLASS,
//       Location location,
//       String title,
//       String salaryIsPredicted,
//       String contractTime,
//       String contractType}) {
//     this._salaryMin = salaryMin;
//     this._salaryMax = salaryMax;
//     this._adref = adref;
//     this._latitude = latitude;
//     this._id = id;
//     this._longitude = longitude;
//     this._description = description;
//     this._created = created;
//     this._company = company;
//     this._category = category;
//     this._redirectUrl = redirectUrl;
//     this._sCLASS = sCLASS;
//     this._location = location;
//     this._title = title;
//     this._salaryIsPredicted = salaryIsPredicted;
//     this._contractTime = contractTime;
//     this._contractType = contractType;
//   }

//   double get salaryMin => _salaryMin;
//   set salaryMin(double salaryMin) => _salaryMin = salaryMin;
//   double get salaryMax => _salaryMax;
//   set salaryMax(double salaryMax) => _salaryMax = salaryMax;
//   String get adref => _adref;
//   set adref(String adref) => _adref = adref;
//   double get latitude => _latitude;
//   set latitude(double latitude) => _latitude = latitude;
//   String get id => _id;
//   set id(String id) => _id = id;
//   double get longitude => _longitude;
//   set longitude(double longitude) => _longitude = longitude;
//   String get description => _description;
//   set description(String description) => _description = description;
//   String get created => _created;
//   set created(String created) => _created = created;
//   Company get company => _company;
//   set company(Company company) => _company = company;
//   Category get category => _category;
//   set category(Category category) => _category = category;
//   String get redirectUrl => _redirectUrl;
//   set redirectUrl(String redirectUrl) => _redirectUrl = redirectUrl;
//   String get sCLASS => _sCLASS;
//   set sCLASS(String sCLASS) => _sCLASS = sCLASS;
//   Location get location => _location;
//   set location(Location location) => _location = location;
//   String get title => _title;
//   set title(String title) => _title = title;
//   String get salaryIsPredicted => _salaryIsPredicted;
//   set salaryIsPredicted(String salaryIsPredicted) =>
//       _salaryIsPredicted = salaryIsPredicted;
//   String get contractTime => _contractTime;
//   set contractTime(String contractTime) => _contractTime = contractTime;
//   String get contractType => _contractType;
//   set contractType(String contractType) => _contractType = contractType;

//   Results.fromJson(Map<String, dynamic> json) {
//     _salaryMin = json['salary_min'];
//     _salaryMax = json['salary_max'];
//     _adref = json['adref'];
//     _latitude = json['latitude'];
//     _id = json['id'];
//     _longitude = json['longitude'];
//     _description = json['description'];
//     _created = json['created'];
//     _company =
//         json['company'] != null ? new Company.fromJson(json['company']) : null;
//     _category = json['category'] != null
//         ? new Category.fromJson(json['category'])
//         : null;
//     _redirectUrl = json['redirect_url'];
//     _sCLASS = json['__CLASS__'];
//     _location = json['location'] != null
//         ? new Location.fromJson(json['location'])
//         : null;
//     _title = json['title'];
//     _salaryIsPredicted = json['salary_is_predicted'];
//     _contractTime = json['contract_time'];
//     _contractType = json['contract_type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['salary_min'] = this._salaryMin;
//     data['salary_max'] = this._salaryMax;
//     data['adref'] = this._adref;
//     data['latitude'] = this._latitude;
//     data['id'] = this._id;
//     data['longitude'] = this._longitude;
//     data['description'] = this._description;
//     data['created'] = this._created;
//     if (this._company != null) {
//       data['company'] = this._company.toJson();
//     }
//     if (this._category != null) {
//       data['category'] = this._category.toJson();
//     }
//     data['redirect_url'] = this._redirectUrl;
//     data['__CLASS__'] = this._sCLASS;
//     if (this._location != null) {
//       data['location'] = this._location.toJson();
//     }
//     data['title'] = this._title;
//     data['salary_is_predicted'] = this._salaryIsPredicted;
//     data['contract_time'] = this._contractTime;
//     data['contract_type'] = this._contractType;
//     return data;
//   }
// }

// class Company {
//   String _sCLASS;
//   String _displayName;

//   Company({String sCLASS, String displayName}) {
//     this._sCLASS = sCLASS;
//     this._displayName = displayName;
//   }

//   String get sCLASS => _sCLASS;
//   set sCLASS(String sCLASS) => _sCLASS = sCLASS;
//   String get displayName => _displayName;
//   set displayName(String displayName) => _displayName = displayName;

//   Company.fromJson(Map<String, dynamic> json) {
//     _sCLASS = json['__CLASS__'];
//     _displayName = json['display_name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['__CLASS__'] = this._sCLASS;
//     data['display_name'] = this._displayName;
//     return data;
//   }
// }

// class Category {
//   String _label;
//   String _sCLASS;
//   String _tag;

//   Category({String label, String sCLASS, String tag}) {
//     this._label = label;
//     this._sCLASS = sCLASS;
//     this._tag = tag;
//   }

//   String get label => _label;
//   set label(String label) => _label = label;
//   String get sCLASS => _sCLASS;
//   set sCLASS(String sCLASS) => _sCLASS = sCLASS;
//   String get tag => _tag;
//   set tag(String tag) => _tag = tag;

//   Category.fromJson(Map<String, dynamic> json) {
//     _label = json['label'];
//     _sCLASS = json['__CLASS__'];
//     _tag = json['tag'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['label'] = this._label;
//     data['__CLASS__'] = this._sCLASS;
//     data['tag'] = this._tag;
//     return data;
//   }
// }

// class Location {
//   List<String> _area;
//   String _sCLASS;
//   String _displayName;

//   Location({List<String> area, String sCLASS, String displayName}) {
//     this._area = area;
//     this._sCLASS = sCLASS;
//     this._displayName = displayName;
//   }

//   List<String> get area => _area;
//   set area(List<String> area) => _area = area;
//   String get sCLASS => _sCLASS;
//   set sCLASS(String sCLASS) => _sCLASS = sCLASS;
//   String get displayName => _displayName;
//   set displayName(String displayName) => _displayName = displayName;

//   Location.fromJson(Map<String, dynamic> json) {
//     _area = json['area'].cast<String>();
//     _sCLASS = json['__CLASS__'];
//     _displayName = json['display_name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['area'] = this._area;
//     data['__CLASS__'] = this._sCLASS;
//     data['display_name'] = this._displayName;
//     return data;
//   }
// }
