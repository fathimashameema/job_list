import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_model.freezed.dart';
part 'jobs_model.g.dart';

@freezed
class JobsModel with _$JobsModel {
  const factory JobsModel({
    String? the00Warning,
    String? the0LegalNotice,
    int? jobCount,
    int? totalJobCount,
    required List<Jobs> jobs,
  }) = _JobsModel;

  factory JobsModel.fromJson(Map<String, dynamic> json) =>
      _$JobsModelFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class Jobs with _$Jobs {
  const factory Jobs({
    required int id,
    String? url,
    required String title,
    required String companyName,
    String? companyLogo,
    String? category,
    required List<String> tags,
    required String jobType,
    DateTime? publicationDate,
    String? candidateRequiredLocation,
    String? salary,
    required String description,
  }) = _Jobs;

  factory Jobs.fromJson(Map<String, dynamic> json) => _$JobsFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
