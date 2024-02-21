import 'result.dart';

class Job {
  String? jobClass;
  double? mean;
  int? count;
  List<Result>? results;

  Job({this.jobClass, this.mean, this.count, this.results});

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        jobClass: json['__CLASS__'] as String?,
        mean: (json['mean'] as num?)?.toDouble(),
        count: json['count'] as int?,
        results: (json['results'] as List<dynamic>?)
            ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        '__CLASS__': jobClass,
        'mean': mean,
        'count': count,
        'results': results?.map((e) => e.toJson()).toList(),
      };
}
