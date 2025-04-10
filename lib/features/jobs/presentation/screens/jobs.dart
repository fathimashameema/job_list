// import 'package:find_jobs/features/jobs/presentation/bloc/jobs_bloc/job_bloc.dart';
// import 'package:find_jobs/features/jobs/presentation/bloc/save_job_bloc/save_job_bloc.dart';
// import 'package:find_jobs/features/jobs/presentation/widgets/job_card.dart';
// import 'package:find_jobs/features/jobs/presentation/widgets/job_details.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shimmer/shimmer.dart';

// class Jobs extends StatelessWidget {
//   const Jobs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<JobBloc, JobState>(
//         builder: (context, state) {
//           if (state is JobLoading) {
//             return ListView.builder(
//               itemCount: 10,
//               itemBuilder: (context, index) {
//                 return Shimmer.fromColors(
//                   baseColor: Theme.of(context).primaryColorDark,
//                   highlightColor: Theme.of(context).primaryColorLight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 150.0,
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).highlightColor,
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           } else if (state is JobLoaded) {
//             return ListView.builder(
//               itemCount: state.jobs.length,
//               itemBuilder: (context, index) {
//                 final job = state.jobs[index];
//                 return GestureDetector(
//                   onTap: () async {
//                     await showDialog(
//                       context: context,
//                       builder: (ctx) {
//                         return JobDetails(
//                           description: job.description,
//                           jobtitle: job.title,
//                           companyName: job.companyName,
//                           jobType: job.jobType,
//                           salary: job.salary,
//                         );
//                       },
//                     );
//                   },
//                   child: BlocBuilder<SaveJobBloc, SaveJobState>(
//                     builder: (context, state) {
//                       return JobCard(
//                         description: job.description,
//                         id: job.id,
//                         jobtitle: job.title,
//                         companyName: job.companyName,
//                         salary: job.salary,
//                         jobType: job.jobType,
//                         icon: IconButton(
//                           onPressed: () {
//                             context.read<SaveJobBloc>().add(SaveJob(job: job));
//                             context.read<SaveJobBloc>().add(FetchSaved());
//                           },
//                           icon:
//                               state is Saved
//                                   ? Icon(Icons.bookmark)
//                                   : Icon(Icons.bookmark_add_outlined),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             );
//           } else if (state is JobError) {
//             return Center(child: Text('Something went wrong'));
//           }
//           return const Center(child: Text("No Jobs Available"));
//         },
//       ),
//     );
//   }
// }

import 'package:find_jobs/features/jobs/data/models/jobs_model.dart';
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
        builder: (context, jobState) {
          if (jobState is JobLoading) {
            return _buildLoadingShimmer();
          } else if (jobState is JobLoaded) {
            context.read<SaveJobBloc>().add(
              CheckSavedStatus(jobs: jobState.jobs),
            );

            return BlocBuilder<SaveJobBloc, SaveJobState>(
              builder: (context, saveState) {
                return _buildJobList(
                  context,
                  jobState.jobs,
                  saveState is SavedStatusChecked ? saveState.statusMap : {},
                );
              },
            );
          } else if (jobState is JobError) {
            return Center(child: Text('Something went wrong'));
          }
          return const Center(child: Text("No Jobs Available"));
        },
      ),
    );
  }

  Widget _buildLoadingShimmer() {
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
  }

  Widget _buildJobList(
    BuildContext context,
    List<Job> jobs,
    Map<int, bool> savedStatusMap,
  ) {
    return ListView.builder(
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        final job = jobs[index];
        final isSaved = savedStatusMap[job.id] ?? false;

        return GestureDetector(
          onTap: () => _showJobDetails(context, job),
          child: JobCard(
            description: job.description,
            id: job.id,
            jobtitle: job.title,
            companyName: job.companyName,
            salary: job.salary,
            jobType: job.jobType,
            icon: IconButton(
              onPressed: () => _toggleSaveJob(context, job, isSaved),
              icon: Icon(Icons.bookmark, color: isSaved ? Colors.blue : null),
            ),
          ),
        );
      },
    );
  }

  void _showJobDetails(BuildContext context, Job job) async {
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
  }

  void _toggleSaveJob(BuildContext context, Job job, bool isSaved) {
    if (isSaved) {
      context.read<SaveJobBloc>().add(RemoveSaved(jobId: job.id));
    } else {
      context.read<SaveJobBloc>().add(SaveJob(job: job));
    }
    context.read<SaveJobBloc>().add(CheckSavedStatus(jobs: [job]));
  }
}
