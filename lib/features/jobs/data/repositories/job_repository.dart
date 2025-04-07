import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:find_jobs/features/jobs/data/models/jobs_model.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';

class JobRepository extends JobRepo {
  Dio dio = Dio();
  @override
  Future<JobsModel?> getJobs() async {
    log('called get jobs');
    try {
      final response = await dio.get('https://remotive.com/api/remote-jobs');
      log(response.statusCode.toString());

      if (response.statusCode == 200) {
        log('successfully fetched all jobs');
        // log(response.data);
        // log('parsed ${JobsModel.fromJson(response.data)}');
        return JobsModel.fromJson(response.data);
      } else if (response.statusCode == 400) {
        log('Failed to fetch jobs');
      }
    } catch (e) {
      log('something went wrong while fetching data ${e.toString()}');
      rethrow;
    }
    return null;
  }
}
