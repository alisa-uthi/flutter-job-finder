import 'package:flutter/material.dart';
import 'package:job_finder/global_widgets/job_overview.dart';
import 'package:job_finder/global_widgets/job_tab.dart';
import 'package:job_finder/global_widgets/sub_header.dart';
import 'package:job_finder/model/job.dart';

class JobDetailScreen extends StatefulWidget {
  final Job job;

  JobDetailScreen({this.job});

  @override
  _JobDetailScreenState createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: widget.job.isFavorite
                ? Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  )
                : Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.redAccent,
                  ),
            onPressed: () {
              setState(() {
                widget.job.isFavorite = !widget.job.isFavorite;
              });
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image(
              image: AssetImage(widget.job.logoUrl),
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.job.title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.job.company,
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            JobTab(),
            JobOverview(
              job: widget.job,
            ),
          ],
        ),
      ),
    );
  }
}
