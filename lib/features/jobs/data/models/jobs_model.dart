import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_model.freezed.dart';
part 'jobs_model.g.dart';

@freezed
abstract class JobsModel with _$JobsModel {
  const factory JobsModel({
    @JsonKey(name: '00-warning') String? warning,
    @JsonKey(name: '0-legal-notice') String? legalNotice,
    required int? jobCount,
    required int? totalJobCount,
    required List<Job> jobs,
  }) = _JobsModel;

  factory JobsModel.fromJson(Map<String, dynamic> json) =>
      _$JobsModelFromJson(json);
}

@freezed
abstract class Job with _$Job {
  const factory Job({
    required int id,
    required String url,
    required String title,
    @JsonKey(name: 'company_name') required String companyName,
    @JsonKey(name: 'company_logo') required String companyLogo,
    required String category,
    required List<String> tags,
    @JsonKey(name: 'job_type') required String jobType,
    @JsonKey(name: 'publication_date') required DateTime publicationDate,
    @JsonKey(name: 'candidate_required_location')
    required String candidateRequiredLocation,
    required String salary,
    required String description,
    String? applyUrl,
    String? remote,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
