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

 String? get the00Warning; String? get the0LegalNotice; int? get jobCount; int? get totalJobCount; List<Jobs> get jobs;
/// Create a copy of JobsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobsModelCopyWith<JobsModel> get copyWith => _$JobsModelCopyWithImpl<JobsModel>(this as JobsModel, _$identity);

  /// Serializes this JobsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobsModel&&(identical(other.the00Warning, the00Warning) || other.the00Warning == the00Warning)&&(identical(other.the0LegalNotice, the0LegalNotice) || other.the0LegalNotice == the0LegalNotice)&&(identical(other.jobCount, jobCount) || other.jobCount == jobCount)&&(identical(other.totalJobCount, totalJobCount) || other.totalJobCount == totalJobCount)&&const DeepCollectionEquality().equals(other.jobs, jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,the00Warning,the0LegalNotice,jobCount,totalJobCount,const DeepCollectionEquality().hash(jobs));

@override
String toString() {
  return 'JobsModel(the00Warning: $the00Warning, the0LegalNotice: $the0LegalNotice, jobCount: $jobCount, totalJobCount: $totalJobCount, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class $JobsModelCopyWith<$Res>  {
  factory $JobsModelCopyWith(JobsModel value, $Res Function(JobsModel) _then) = _$JobsModelCopyWithImpl;
@useResult
$Res call({
 String? the00Warning, String? the0LegalNotice, int? jobCount, int? totalJobCount, List<Jobs> jobs
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
@pragma('vm:prefer-inline') @override $Res call({Object? the00Warning = freezed,Object? the0LegalNotice = freezed,Object? jobCount = freezed,Object? totalJobCount = freezed,Object? jobs = null,}) {
  return _then(_self.copyWith(
the00Warning: freezed == the00Warning ? _self.the00Warning : the00Warning // ignore: cast_nullable_to_non_nullable
as String?,the0LegalNotice: freezed == the0LegalNotice ? _self.the0LegalNotice : the0LegalNotice // ignore: cast_nullable_to_non_nullable
as String?,jobCount: freezed == jobCount ? _self.jobCount : jobCount // ignore: cast_nullable_to_non_nullable
as int?,totalJobCount: freezed == totalJobCount ? _self.totalJobCount : totalJobCount // ignore: cast_nullable_to_non_nullable
as int?,jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Jobs>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _JobsModel implements JobsModel {
  const _JobsModel({this.the00Warning, this.the0LegalNotice, this.jobCount, this.totalJobCount, required final  List<Jobs> jobs}): _jobs = jobs;
  factory _JobsModel.fromJson(Map<String, dynamic> json) => _$JobsModelFromJson(json);

@override final  String? the00Warning;
@override final  String? the0LegalNotice;
@override final  int? jobCount;
@override final  int? totalJobCount;
 final  List<Jobs> _jobs;
@override List<Jobs> get jobs {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobsModel&&(identical(other.the00Warning, the00Warning) || other.the00Warning == the00Warning)&&(identical(other.the0LegalNotice, the0LegalNotice) || other.the0LegalNotice == the0LegalNotice)&&(identical(other.jobCount, jobCount) || other.jobCount == jobCount)&&(identical(other.totalJobCount, totalJobCount) || other.totalJobCount == totalJobCount)&&const DeepCollectionEquality().equals(other._jobs, _jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,the00Warning,the0LegalNotice,jobCount,totalJobCount,const DeepCollectionEquality().hash(_jobs));

@override
String toString() {
  return 'JobsModel(the00Warning: $the00Warning, the0LegalNotice: $the0LegalNotice, jobCount: $jobCount, totalJobCount: $totalJobCount, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class _$JobsModelCopyWith<$Res> implements $JobsModelCopyWith<$Res> {
  factory _$JobsModelCopyWith(_JobsModel value, $Res Function(_JobsModel) _then) = __$JobsModelCopyWithImpl;
@override @useResult
$Res call({
 String? the00Warning, String? the0LegalNotice, int? jobCount, int? totalJobCount, List<Jobs> jobs
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
@override @pragma('vm:prefer-inline') $Res call({Object? the00Warning = freezed,Object? the0LegalNotice = freezed,Object? jobCount = freezed,Object? totalJobCount = freezed,Object? jobs = null,}) {
  return _then(_JobsModel(
the00Warning: freezed == the00Warning ? _self.the00Warning : the00Warning // ignore: cast_nullable_to_non_nullable
as String?,the0LegalNotice: freezed == the0LegalNotice ? _self.the0LegalNotice : the0LegalNotice // ignore: cast_nullable_to_non_nullable
as String?,jobCount: freezed == jobCount ? _self.jobCount : jobCount // ignore: cast_nullable_to_non_nullable
as int?,totalJobCount: freezed == totalJobCount ? _self.totalJobCount : totalJobCount // ignore: cast_nullable_to_non_nullable
as int?,jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Jobs>,
  ));
}


}


/// @nodoc
mixin _$Jobs {

 int get id; String? get url; String get title; String get companyName; String? get companyLogo; String? get category; List<String> get tags; String get jobType; DateTime? get publicationDate; String? get candidateRequiredLocation; String? get salary; String get description;
/// Create a copy of Jobs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobsCopyWith<Jobs> get copyWith => _$JobsCopyWithImpl<Jobs>(this as Jobs, _$identity);

  /// Serializes this Jobs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Jobs&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.candidateRequiredLocation, candidateRequiredLocation) || other.candidateRequiredLocation == candidateRequiredLocation)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,title,companyName,companyLogo,category,const DeepCollectionEquality().hash(tags),jobType,publicationDate,candidateRequiredLocation,salary,description);

@override
String toString() {
  return 'Jobs(id: $id, url: $url, title: $title, companyName: $companyName, companyLogo: $companyLogo, category: $category, tags: $tags, jobType: $jobType, publicationDate: $publicationDate, candidateRequiredLocation: $candidateRequiredLocation, salary: $salary, description: $description)';
}


}

/// @nodoc
abstract mixin class $JobsCopyWith<$Res>  {
  factory $JobsCopyWith(Jobs value, $Res Function(Jobs) _then) = _$JobsCopyWithImpl;
@useResult
$Res call({
 int id, String? url, String title, String companyName, String? companyLogo, String? category, List<String> tags, String jobType, DateTime? publicationDate, String? candidateRequiredLocation, String? salary, String description
});




}
/// @nodoc
class _$JobsCopyWithImpl<$Res>
    implements $JobsCopyWith<$Res> {
  _$JobsCopyWithImpl(this._self, this._then);

  final Jobs _self;
  final $Res Function(Jobs) _then;

/// Create a copy of Jobs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = freezed,Object? title = null,Object? companyName = null,Object? companyLogo = freezed,Object? category = freezed,Object? tags = null,Object? jobType = null,Object? publicationDate = freezed,Object? candidateRequiredLocation = freezed,Object? salary = freezed,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,jobType: null == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,candidateRequiredLocation: freezed == candidateRequiredLocation ? _self.candidateRequiredLocation : candidateRequiredLocation // ignore: cast_nullable_to_non_nullable
as String?,salary: freezed == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Jobs implements Jobs {
  const _Jobs({required this.id, this.url, required this.title, required this.companyName, this.companyLogo, this.category, required final  List<String> tags, required this.jobType, this.publicationDate, this.candidateRequiredLocation, this.salary, required this.description}): _tags = tags;
  factory _Jobs.fromJson(Map<String, dynamic> json) => _$JobsFromJson(json);

@override final  int id;
@override final  String? url;
@override final  String title;
@override final  String companyName;
@override final  String? companyLogo;
@override final  String? category;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String jobType;
@override final  DateTime? publicationDate;
@override final  String? candidateRequiredLocation;
@override final  String? salary;
@override final  String description;

/// Create a copy of Jobs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobsCopyWith<_Jobs> get copyWith => __$JobsCopyWithImpl<_Jobs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Jobs&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.candidateRequiredLocation, candidateRequiredLocation) || other.candidateRequiredLocation == candidateRequiredLocation)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,title,companyName,companyLogo,category,const DeepCollectionEquality().hash(_tags),jobType,publicationDate,candidateRequiredLocation,salary,description);

@override
String toString() {
  return 'Jobs(id: $id, url: $url, title: $title, companyName: $companyName, companyLogo: $companyLogo, category: $category, tags: $tags, jobType: $jobType, publicationDate: $publicationDate, candidateRequiredLocation: $candidateRequiredLocation, salary: $salary, description: $description)';
}


}

/// @nodoc
abstract mixin class _$JobsCopyWith<$Res> implements $JobsCopyWith<$Res> {
  factory _$JobsCopyWith(_Jobs value, $Res Function(_Jobs) _then) = __$JobsCopyWithImpl;
@override @useResult
$Res call({
 int id, String? url, String title, String companyName, String? companyLogo, String? category, List<String> tags, String jobType, DateTime? publicationDate, String? candidateRequiredLocation, String? salary, String description
});




}
/// @nodoc
class __$JobsCopyWithImpl<$Res>
    implements _$JobsCopyWith<$Res> {
  __$JobsCopyWithImpl(this._self, this._then);

  final _Jobs _self;
  final $Res Function(_Jobs) _then;

/// Create a copy of Jobs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = freezed,Object? title = null,Object? companyName = null,Object? companyLogo = freezed,Object? category = freezed,Object? tags = null,Object? jobType = null,Object? publicationDate = freezed,Object? candidateRequiredLocation = freezed,Object? salary = freezed,Object? description = null,}) {
  return _then(_Jobs(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,jobType: null == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,candidateRequiredLocation: freezed == candidateRequiredLocation ? _self.candidateRequiredLocation : candidateRequiredLocation // ignore: cast_nullable_to_non_nullable
as String?,salary: freezed == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
