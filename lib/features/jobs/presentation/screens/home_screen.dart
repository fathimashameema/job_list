import 'package:find_jobs/features/jobs/presentation/screens/jobs.dart';
import 'package:find_jobs/features/jobs/presentation/screens/saved.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Find Jobs',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        body: Column(
          children: [
            TabBar(tabs: [Tab(text: 'Jobs'), Tab(text: 'Saved')]),
            Expanded(child: TabBarView(children: [Jobs(), Saved()])),
          ],
        ),
      ),
    );
  }
}
