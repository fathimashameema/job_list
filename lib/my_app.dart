import 'package:find_jobs/core/theme/theme.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repo.dart';
import 'package:find_jobs/features/jobs/data/repositories/job_repository.dart';
import 'package:find_jobs/features/jobs/presentation/bloc/bloc/job_bloc.dart';

import 'package:find_jobs/features/jobs/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    JobRepo jobRepo = JobRepository();
    return BlocProvider(
      create: (context) => JobBloc(jobRepository: jobRepo)..add(FetchJobs()),
      child: MaterialApp(
        theme: JAppTheme.lightTheme,
        themeMode: ThemeMode.system,
        darkTheme: JAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
