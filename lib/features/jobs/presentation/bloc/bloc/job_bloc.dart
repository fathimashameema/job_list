
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:find_jobs/features/jobs/data/models/jobs_model.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';
import 'package:flutter/material.dart';

part 'job_event.dart';
part 'job_state.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  final JobRepo _jobRepo;
  JobBloc({required JobRepo jobRepository})
    : _jobRepo = jobRepository,
      super(JobInitial()) {
    on<FetchJobs>((event, emit) async {
      emit(JobLoading());
      log('jobs loading');
      try {
        final jobs = await _jobRepo.getJobs();
        log('fetched jobs');
        log('Feteched jobs ${jobs!.jobs}');
        emit(JobLoaded(jobs: jobs.jobs));
      } catch (e) {
        log('error is ${e.toString()}');
        emit(JobError(message: e.toString()));
      }
    });
  }
}
