import 'package:find_jobs/core/utils/colors/colors.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repository.dart';

import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String jobtitle;
  final String description;
  final int id;
  final String companyName;
  final String? salary;
  final String jobType;
  final IconButton? icon;

  const JobCard({
    super.key,
    required this.description,
    required this.id,
    required this.jobtitle,
    required this.companyName,
    this.salary,
    required this.jobType,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    JobRepo jobRepo = JobRepository();
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: JColors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      jobtitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  icon != null ? icon! : SizedBox.shrink(),
                ],
              ),

              Text(companyName, style: Theme.of(context).textTheme.titleMedium),
              Row(
                children: [
                  salary != ''
                      ? Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            color: JColors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              salary!,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      )
                      : SizedBox.shrink(),
                  salary != '' ? SizedBox(width: 10) : SizedBox.shrink(),

                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: JColors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          jobType,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                jobRepo.stripHtmlTags(description),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
