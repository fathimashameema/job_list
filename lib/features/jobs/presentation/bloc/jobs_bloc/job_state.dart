part of 'job_bloc.dart';

@immutable
abstract class JobState {}

final class JobInitial extends JobState {}

class JobLoading extends JobState {}

class JobLoaded extends JobState {
  final List<Job> jobs;
  JobLoaded({required this.jobs});
}

class JobError extends JobState {
  final String message;
  JobError({required this.message});
}


