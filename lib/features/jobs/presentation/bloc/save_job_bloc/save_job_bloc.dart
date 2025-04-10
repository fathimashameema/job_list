import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:find_jobs/features/jobs/data/models/jobs_model.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';
import 'package:flutter/material.dart';

part 'save_job_event.dart';
part 'save_job_state.dart';

class SaveJobBloc extends Bloc<SaveJobEvent, SaveJobState> {
  final JobRepo _jobRepo;
  SaveJobBloc({required JobRepo jobRepository})
    : _jobRepo = jobRepository,
      super(JobInitial()) {
    on<SaveJob>((event, emit) {
      emit(JobSaving());
      try {
        _jobRepo.saveJob(event.job);
        log('job saved');
        emit(JobSaved());
      } catch (e) {
        log('error is ${e.toString()}');
        emit(ErrorSavingJob());
      }
    });

    on<RemoveSaved>((event, emit) {
      try {
        _jobRepo.removeSavedJob(event.jobId);
        log('saved job removed');
        emit(RemovedSaved());
      } catch (e) {
        log('error is ${e.toString()}');
        emit(ErrorRemovingJob());
      }
    });

    on<FetchSaved>((event, emit) async {
      emit(SavedJobsLoading());
      try {
        final savedJobs = await _jobRepo.getSavedJobs();
        log('fetched saved jobs');
        emit(SavedJobsLoaded(jobs: savedJobs));
      } catch (e) {
        log('error is ${e.toString()}');
        emit((ErrorLoadingSavedJobs()));
      }
    });

    on<CheckSavedStatus>((event, emit) async {
      try {
        final savedJobs = await _jobRepo.getSavedJobs();
        final savedJobIds = savedJobs.map((j) => j.id).toSet();

        // Create a map of jobId -> isSaved
        final statusMap = {
          for (var job in event.jobs) job.id: savedJobIds.contains(job.id),
        };

        emit(SavedStatusChecked(statusMap: statusMap));
      } catch (e) {
        log('Error checking saved status: ${e.toString()}');
      }
    });
  }
}
