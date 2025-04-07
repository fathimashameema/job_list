import 'package:find_jobs/features/jobs/presentation/bloc/bloc/job_bloc.dart';
import 'package:find_jobs/features/jobs/presentation/widgets/job_card.dart';
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
                return JobCard(
                  description: job.description,
                  id: job.id,
                  jobtitle: job.title,
                  companyName: job.companyName,
                  salary: job.salary ,
                  jobType: job.jobType,
                  icon: Icon(Icons.bookmark),
                );
              },
            );
          } else if (state is JobError) {
            return Center(child: Text('Something went wrong'));
          }
          return const Center(child: Text("No Todos Available"));
        },
      ),
    );
  }
}
