import 'package:find_jobs/features/jobs/presentation/bloc/jobs_bloc/job_bloc.dart';
import 'package:find_jobs/features/jobs/presentation/bloc/save_job_bloc/save_job_bloc.dart';
import 'package:find_jobs/features/jobs/presentation/widgets/job_card.dart';
import 'package:find_jobs/features/jobs/presentation/widgets/job_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<JobBloc, JobState>(
        builder: (context, state) {
          if (state is JobLoading) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: Theme.of(context).primaryColorDark,
                  highlightColor: Theme.of(context).primaryColorLight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).highlightColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state is JobLoaded) {
            return ListView.builder(
              itemCount: state.jobs.length,
              itemBuilder: (context, index) {
                final job = state.jobs[index];
                return GestureDetector(
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (ctx) {
                        return JobDetails(
                          description: job.description,
                          jobtitle: job.title,
                          companyName: job.companyName,
                          jobType: job.jobType,
                          salary: job.salary,
                        );
                      },
                    );
                  },
                  child: BlocBuilder<SaveJobBloc, SaveJobState>(
                    builder: (context, state) {
                      return JobCard(
                        description: job.description,
                        id: job.id,
                        jobtitle: job.title,
                        companyName: job.companyName,
                        salary: job.salary,
                        jobType: job.jobType,
                        icon: IconButton(
                          onPressed: () {
                            context.read<SaveJobBloc>().add(
                              IsSaved(jobId: job.id),
                            );
                            if (state is NotSaved) {
                              context.read<SaveJobBloc>().add(
                                SaveJob(job: job),
                              );
                            }
                          },
                          icon:
                              state is Saved
                                  ? Icon(Icons.bookmark)
                                  : Icon(Icons.bookmark_add_outlined),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          } else if (state is JobError) {
            return Center(child: Text('Something went wrong'));
          }
          return const Center(child: Text("No Jobs Available"));
        },
      ),
    );
  }
}
