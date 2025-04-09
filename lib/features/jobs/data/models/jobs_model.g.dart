// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobsModel _$JobsModelFromJson(Map<String, dynamic> json) => _JobsModel(
  warning: json['00-warning'] as String?,
  legalNotice: json['0-legal-notice'] as String?,
  jobCount: (json['jobCount'] as num?)?.toInt(),
  totalJobCount: (json['totalJobCount'] as num?)?.toInt(),
  jobs:
      (json['jobs'] as List<dynamic>)
          .map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$JobsModelToJson(_JobsModel instance) =>
    <String, dynamic>{
      '00-warning': instance.warning,
      '0-legal-notice': instance.legalNotice,
      'jobCount': instance.jobCount,
      'totalJobCount': instance.totalJobCount,
      'jobs': instance.jobs,
    };

_Job _$JobFromJson(Map<String, dynamic> json) => _Job(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  title: json['title'] as String,
  companyName: json['company_name'] as String,
  companyLogo: json['company_logo'] as String,
  category: json['category'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  jobType: json['job_type'] as String,
  publicationDate: DateTime.parse(json['publication_date'] as String),
  candidateRequiredLocation: json['candidate_required_location'] as String,
  salary: json['salary'] as String,
  description: json['description'] as String,
  applyUrl: json['applyUrl'] as String?,
  remote: json['remote'] as String?,
);

Map<String, dynamic> _$JobToJson(_Job instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'title': instance.title,
  'company_name': instance.companyName,
  'company_logo': instance.companyLogo,
  'category': instance.category,
  'tags': instance.tags,
  'job_type': instance.jobType,
  'publication_date': instance.publicationDate.toIso8601String(),
  'candidate_required_location': instance.candidateRequiredLocation,
  'salary': instance.salary,
  'description': instance.description,
  'applyUrl': instance.applyUrl,
  'remote': instance.remote,
};
