import 'package:flutter/material.dart';
import 'package:job_finder/model/job.dart';
import 'package:job_finder/screens/job_detail_screen.dart';

class JobCard extends StatelessWidget {
  final Job job;

  JobCard(this.job);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => JobDetailScreen(job: job)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 30,
              offset: Offset(1, 1),
            )],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  job.logoUrl,
                  width: 100,
                  height: 100,
                ),
                Text(
                  job.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  job.company,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                  ),
                ),
                Text(
                  "\$${job.salary}/hr - ${job.location}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
