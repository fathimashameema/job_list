part of 'job_bloc.dart';

@immutable
abstract class JobEvent {}

class FetchJobs extends JobEvent {}
