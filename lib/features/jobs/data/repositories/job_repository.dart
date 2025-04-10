import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:find_jobs/features/jobs/data/models/jobs_model.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';
import 'package:html/parser.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  @override
  String stripHtmlTags(String htmlString) {
    final document = parse(htmlString);
    return document.body?.text ?? '';
  }

  static const _favoritesKey = 'favorite_jobs';

  @override
  Future<void> saveJob(Job job) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = await getSavedJobs();

    if (!favorites.any((j) => j.id == job.id)) {
      favorites.add(job);
      await prefs.setString(_favoritesKey, json.encode(favorites));
    }
  }

  @override
  Future<void> removeSavedJob(int jobId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = await getSavedJobs();
    favorites.removeWhere((job) => job.id == jobId);
    await prefs.setString(_favoritesKey, json.encode(favorites));
  }

  
  @override
  Future<List<Job>> getSavedJobs() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_favoritesKey);

    if (jsonString != null) {
      try {
        // Decode the JSON string to a List<dynamic>
        final List<dynamic> jsonList = json.decode(jsonString);

        // Convert each item in the list to a Job object
        return jsonList.map((jobJson) => Job.fromJson(jobJson)).toList();
      } catch (e) {
        log('Error parsing saved jobs: $e');
        return [];
      }
    }
    return [];
  }

  @override
  Future<bool> isSaved(int jobId) async {
    final favorites = await getSavedJobs();
    return favorites.any((job) => job.id == jobId);
  }
}
