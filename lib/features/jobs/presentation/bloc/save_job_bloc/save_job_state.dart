part of 'save_job_bloc.dart';

@immutable
abstract class SaveJobState {}

final class JobInitial extends SaveJobState {}

class JobSaving extends SaveJobState {}

class JobSaved extends SaveJobState {}

class SavedJobsLoaded extends SaveJobState {
  final List<Job> jobs;
  SavedJobsLoaded({required this.jobs});
}

class SavedJobsLoading extends SaveJobState {}

class ErrorLoadingSavedJobs extends SaveJobState {}

class RemovingSaved extends SaveJobState {}

class RemovedSaved extends SaveJobState {}

class ErrorSavingJob extends SaveJobState {}

class ErrorRemovingJob extends SaveJobState {}

class SavedStatusChecked extends SaveJobState {
  final Map<int, bool> statusMap;
  SavedStatusChecked({required this.statusMap});
}
