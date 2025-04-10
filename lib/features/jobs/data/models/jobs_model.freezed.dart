// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobsModel {

@JsonKey(name: '00-warning') String? get warning;@JsonKey(name: '0-legal-notice') String? get legalNotice; int? get jobCount; int? get totalJobCount; List<Job> get jobs;
/// Create a copy of JobsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobsModelCopyWith<JobsModel> get copyWith => _$JobsModelCopyWithImpl<JobsModel>(this as JobsModel, _$identity);

  /// Serializes this JobsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobsModel&&(identical(other.warning, warning) || other.warning == warning)&&(identical(other.legalNotice, legalNotice) || other.legalNotice == legalNotice)&&(identical(other.jobCount, jobCount) || other.jobCount == jobCount)&&(identical(other.totalJobCount, totalJobCount) || other.totalJobCount == totalJobCount)&&const DeepCollectionEquality().equals(other.jobs, jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,warning,legalNotice,jobCount,totalJobCount,const DeepCollectionEquality().hash(jobs));

@override
String toString() {
  return 'JobsModel(warning: $warning, legalNotice: $legalNotice, jobCount: $jobCount, totalJobCount: $totalJobCount, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class $JobsModelCopyWith<$Res>  {
  factory $JobsModelCopyWith(JobsModel value, $Res Function(JobsModel) _then) = _$JobsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '00-warning') String? warning,@JsonKey(name: '0-legal-notice') String? legalNotice, int? jobCount, int? totalJobCount, List<Job> jobs
});




}
/// @nodoc
class _$JobsModelCopyWithImpl<$Res>
    implements $JobsModelCopyWith<$Res> {
  _$JobsModelCopyWithImpl(this._self, this._then);

  final JobsModel _self;
  final $Res Function(JobsModel) _then;

/// Create a copy of JobsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? warning = freezed,Object? legalNotice = freezed,Object? jobCount = freezed,Object? totalJobCount = freezed,Object? jobs = null,}) {
  return _then(_self.copyWith(
warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as String?,legalNotice: freezed == legalNotice ? _self.legalNotice : legalNotice // ignore: cast_nullable_to_non_nullable
as String?,jobCount: freezed == jobCount ? _self.jobCount : jobCount // ignore: cast_nullable_to_non_nullable
as int?,totalJobCount: freezed == totalJobCount ? _self.totalJobCount : totalJobCount // ignore: cast_nullable_to_non_nullable
as int?,jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _JobsModel implements JobsModel {
  const _JobsModel({@JsonKey(name: '00-warning') this.warning, @JsonKey(name: '0-legal-notice') this.legalNotice, required this.jobCount, required this.totalJobCount, required final  List<Job> jobs}): _jobs = jobs;
  factory _JobsModel.fromJson(Map<String, dynamic> json) => _$JobsModelFromJson(json);

@override@JsonKey(name: '00-warning') final  String? warning;
@override@JsonKey(name: '0-legal-notice') final  String? legalNotice;
@override final  int? jobCount;
@override final  int? totalJobCount;
 final  List<Job> _jobs;
@override List<Job> get jobs {
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobs);
}


/// Create a copy of JobsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobsModelCopyWith<_JobsModel> get copyWith => __$JobsModelCopyWithImpl<_JobsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobsModel&&(identical(other.warning, warning) || other.warning == warning)&&(identical(other.legalNotice, legalNotice) || other.legalNotice == legalNotice)&&(identical(other.jobCount, jobCount) || other.jobCount == jobCount)&&(identical(other.totalJobCount, totalJobCount) || other.totalJobCount == totalJobCount)&&const DeepCollectionEquality().equals(other._jobs, _jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,warning,legalNotice,jobCount,totalJobCount,const DeepCollectionEquality().hash(_jobs));

@override
String toString() {
  return 'JobsModel(warning: $warning, legalNotice: $legalNotice, jobCount: $jobCount, totalJobCount: $totalJobCount, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class _$JobsModelCopyWith<$Res> implements $JobsModelCopyWith<$Res> {
  factory _$JobsModelCopyWith(_JobsModel value, $Res Function(_JobsModel) _then) = __$JobsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '00-warning') String? warning,@JsonKey(name: '0-legal-notice') String? legalNotice, int? jobCount, int? totalJobCount, List<Job> jobs
});




}
/// @nodoc
class __$JobsModelCopyWithImpl<$Res>
    implements _$JobsModelCopyWith<$Res> {
  __$JobsModelCopyWithImpl(this._self, this._then);

  final _JobsModel _self;
  final $Res Function(_JobsModel) _then;

/// Create a copy of JobsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? warning = freezed,Object? legalNotice = freezed,Object? jobCount = freezed,Object? totalJobCount = freezed,Object? jobs = null,}) {
  return _then(_JobsModel(
warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as String?,legalNotice: freezed == legalNotice ? _self.legalNotice : legalNotice // ignore: cast_nullable_to_non_nullable
as String?,jobCount: freezed == jobCount ? _self.jobCount : jobCount // ignore: cast_nullable_to_non_nullable
as int?,totalJobCount: freezed == totalJobCount ? _self.totalJobCount : totalJobCount // ignore: cast_nullable_to_non_nullable
as int?,jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,
  ));
}


}


/// @nodoc
mixin _$Job {

 int get id; String get url; String get title;@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'company_logo') String get companyLogo; String get category; List<String> get tags;@JsonKey(name: 'job_type') String get jobType;@JsonKey(name: 'publication_date') DateTime get publicationDate;@JsonKey(name: 'candidate_required_location') String get candidateRequiredLocation; String get salary; String get description; String? get applyUrl; String? get remote;
/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobCopyWith<Job> get copyWith => _$JobCopyWithImpl<Job>(this as Job, _$identity);

  /// Serializes this Job to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Job&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.candidateRequiredLocation, candidateRequiredLocation) || other.candidateRequiredLocation == candidateRequiredLocation)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.description, description) || other.description == description)&&(identical(other.applyUrl, applyUrl) || other.applyUrl == applyUrl)&&(identical(other.remote, remote) || other.remote == remote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,title,companyName,companyLogo,category,const DeepCollectionEquality().hash(tags),jobType,publicationDate,candidateRequiredLocation,salary,description,applyUrl,remote);

@override
String toString() {
  return 'Job(id: $id, url: $url, title: $title, companyName: $companyName, companyLogo: $companyLogo, category: $category, tags: $tags, jobType: $jobType, publicationDate: $publicationDate, candidateRequiredLocation: $candidateRequiredLocation, salary: $salary, description: $description, applyUrl: $applyUrl, remote: $remote)';
}


}

/// @nodoc
abstract mixin class $JobCopyWith<$Res>  {
  factory $JobCopyWith(Job value, $Res Function(Job) _then) = _$JobCopyWithImpl;
@useResult
$Res call({
 int id, String url, String title,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_logo') String companyLogo, String category, List<String> tags,@JsonKey(name: 'job_type') String jobType,@JsonKey(name: 'publication_date') DateTime publicationDate,@JsonKey(name: 'candidate_required_location') String candidateRequiredLocation, String salary, String description, String? applyUrl, String? remote
});




}
/// @nodoc
class _$JobCopyWithImpl<$Res>
    implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._self, this._then);

  final Job _self;
  final $Res Function(Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? title = null,Object? companyName = null,Object? companyLogo = null,Object? category = null,Object? tags = null,Object? jobType = null,Object? publicationDate = null,Object? candidateRequiredLocation = null,Object? salary = null,Object? description = null,Object? applyUrl = freezed,Object? remote = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyLogo: null == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,jobType: null == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String,publicationDate: null == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime,candidateRequiredLocation: null == candidateRequiredLocation ? _self.candidateRequiredLocation : candidateRequiredLocation // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,applyUrl: freezed == applyUrl ? _self.applyUrl : applyUrl // ignore: cast_nullable_to_non_nullable
as String?,remote: freezed == remote ? _self.remote : remote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Job implements Job {
  const _Job({required this.id, required this.url, required this.title, @JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'company_logo') required this.companyLogo, required this.category, required final  List<String> tags, @JsonKey(name: 'job_type') required this.jobType, @JsonKey(name: 'publication_date') required this.publicationDate, @JsonKey(name: 'candidate_required_location') required this.candidateRequiredLocation, required this.salary, required this.description, this.applyUrl, this.remote}): _tags = tags;
  factory _Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

@override final  int id;
@override final  String url;
@override final  String title;
@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'company_logo') final  String companyLogo;
@override final  String category;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey(name: 'job_type') final  String jobType;
@override@JsonKey(name: 'publication_date') final  DateTime publicationDate;
@override@JsonKey(name: 'candidate_required_location') final  String candidateRequiredLocation;
@override final  String salary;
@override final  String description;
@override final  String? applyUrl;
@override final  String? remote;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobCopyWith<_Job> get copyWith => __$JobCopyWithImpl<_Job>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Job&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.candidateRequiredLocation, candidateRequiredLocation) || other.candidateRequiredLocation == candidateRequiredLocation)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.description, description) || other.description == description)&&(identical(other.applyUrl, applyUrl) || other.applyUrl == applyUrl)&&(identical(other.remote, remote) || other.remote == remote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,title,companyName,companyLogo,category,const DeepCollectionEquality().hash(_tags),jobType,publicationDate,candidateRequiredLocation,salary,description,applyUrl,remote);

@override
String toString() {
  return 'Job(id: $id, url: $url, title: $title, companyName: $companyName, companyLogo: $companyLogo, category: $category, tags: $tags, jobType: $jobType, publicationDate: $publicationDate, candidateRequiredLocation: $candidateRequiredLocation, salary: $salary, description: $description, applyUrl: $applyUrl, remote: $remote)';
}


}

/// @nodoc
abstract mixin class _$JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) _then) = __$JobCopyWithImpl;
@override @useResult
$Res call({
 int id, String url, String title,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_logo') String companyLogo, String category, List<String> tags,@JsonKey(name: 'job_type') String jobType,@JsonKey(name: 'publication_date') DateTime publicationDate,@JsonKey(name: 'candidate_required_location') String candidateRequiredLocation, String salary, String description, String? applyUrl, String? remote
});




}
/// @nodoc
class __$JobCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(this._self, this._then);

  final _Job _self;
  final $Res Function(_Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? title = null,Object? companyName = null,Object? companyLogo = null,Object? category = null,Object? tags = null,Object? jobType = null,Object? publicationDate = null,Object? candidateRequiredLocation = null,Object? salary = null,Object? description = null,Object? applyUrl = freezed,Object? remote = freezed,}) {
  return _then(_Job(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyLogo: null == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,jobType: null == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String,publicationDate: null == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime,candidateRequiredLocation: null == candidateRequiredLocation ? _self.candidateRequiredLocation : candidateRequiredLocation // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,applyUrl: freezed == applyUrl ? _self.applyUrl : applyUrl // ignore: cast_nullable_to_non_nullable
as String?,remote: freezed == remote ? _self.remote : remote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
