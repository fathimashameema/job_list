import 'package:find_jobs/features/jobs/data/models/jobs_model.dart';

abstract class JobRepo {
  Future<JobsModel?> getJobs();
  String stripHtmlTags(String htmlString);
  Future<void> saveJob(Job job);
  Future<void> removeSavedJob(int jobId);
  Future<List<Job>> getSavedJobs();
  Future<bool> isSaved(int jobId);
}
