import 'package:find_jobs/core/utils/colors/colors.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repository.dart';
import 'package:flutter/material.dart';

class JobDetails extends StatelessWidget {
  final String jobtitle;
  final String description;
  final String companyName;
  final String? salary;
  final String jobType;
  const JobDetails({
    super.key,
    required this.description,
    required this.jobtitle,
    required this.companyName,
    this.salary,
    required this.jobType,
  });

  @override
  Widget build(BuildContext context) {
    JobRepo jobRepo = JobRepository();
    return AlertDialog(
      contentPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.7,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(jobtitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 30),
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  jobRepo.stripHtmlTags(description),

                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),

      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close', style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
