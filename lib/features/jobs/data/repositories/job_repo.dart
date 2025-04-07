import 'package:find_jobs/features/jobs/data/models/jobs_model.dart';

abstract class JobRepo {
  Future<JobsModel?> getJobs();
}
