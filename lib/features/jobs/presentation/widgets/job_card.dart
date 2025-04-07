import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String jobtitle;
  final String description;
  final int id;
  final String companyName;
  final String? salary;
  final String jobType;
  final Icon icon;

  const JobCard({
    super.key,
    required this.description,
    required this.id,
    required this.jobtitle,
    required this.companyName,
    this.salary,
    required this.jobType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(jobtitle),
          Text(companyName),
          Text(jobType),
          Text(salary!),
          Text(description, maxLines: 3, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
