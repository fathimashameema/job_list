// import 'package:bloc/bloc.dart';
// import 'package:find_jobs/features/jobs/data/models/jobs.dart';
// import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'jobs_event.dart';
// part 'jobs_state.dart';
// part 'jobs_bloc.freezed.dart';

// class JobsBloc extends Bloc<JobsEvent, JobsState> {
//   final JobRepo _jobRepo;
//   JobsBloc({required JobRepo jobRepository})
//     : _jobRepo = jobRepository,
//       super(_Initial()) {
//     on<_FetchJobs>((event, emit) async {
//       emit(JobsState.loading());
//       try {
//         final jobs = await _jobRepo.getJobs();
//         emit(JobsState.loaded(jobs!.jobs));
//       } catch (e) {
//         emit(JobsState.error(e.toString()));
//       }
//     });
//   }
// }
