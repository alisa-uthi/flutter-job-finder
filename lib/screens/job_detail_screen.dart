import 'package:flutter/material.dart';
import 'package:job_finder/model/job.dart';

class JobDetailScreen extends StatelessWidget {
  final Job job;

  JobDetailScreen({this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(job.title),),
    );
  }
}
