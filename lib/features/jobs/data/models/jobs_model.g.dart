// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobsModel _$JobsModelFromJson(Map<String, dynamic> json) => _JobsModel(
  the00Warning: json['the00Warning'] as String?,
  the0LegalNotice: json['the0LegalNotice'] as String?,
  jobCount: (json['jobCount'] as num?)?.toInt(),
  totalJobCount: (json['totalJobCount'] as num?)?.toInt(),
  jobs:
      (json['jobs'] as List<dynamic>)
          .map((e) => Jobs.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$JobsModelToJson(_JobsModel instance) =>
    <String, dynamic>{
      'the00Warning': instance.the00Warning,
      'the0LegalNotice': instance.the0LegalNotice,
      'jobCount': instance.jobCount,
      'totalJobCount': instance.totalJobCount,
      'jobs': instance.jobs,
    };

_Jobs _$JobsFromJson(Map<String, dynamic> json) => _Jobs(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String?,
  title: json['title'] as String,
  companyName: json['companyName'] as String,
  companyLogo: json['companyLogo'] as String?,
  category: json['category'] as String?,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  jobType: json['jobType'] as String,
  publicationDate:
      json['publicationDate'] == null
          ? null
          : DateTime.parse(json['publicationDate'] as String),
  candidateRequiredLocation: json['candidateRequiredLocation'] as String?,
  salary: json['salary'] as String?,
  description: json['description'] as String,
);

Map<String, dynamic> _$JobsToJson(_Jobs instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'title': instance.title,
  'companyName': instance.companyName,
  'companyLogo': instance.companyLogo,
  'category': instance.category,
  'tags': instance.tags,
  'jobType': instance.jobType,
  'publicationDate': instance.publicationDate?.toIso8601String(),
  'candidateRequiredLocation': instance.candidateRequiredLocation,
  'salary': instance.salary,
  'description': instance.description,
};
