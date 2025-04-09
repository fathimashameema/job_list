part of 'save_job_bloc.dart';

@immutable
abstract class SaveJobEvent {}

class SaveJob extends SaveJobEvent {
  final Job job;
  SaveJob({required this.job});
}

class RemoveSaved extends SaveJobEvent {
  final int jobId;
  RemoveSaved({required this.jobId});
}

class FetchSaved extends SaveJobEvent {}

class IsSaved extends SaveJobEvent {
  final int jobId;
  IsSaved({required this.jobId});
}
