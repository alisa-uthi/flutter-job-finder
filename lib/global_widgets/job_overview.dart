import 'package:flutter/material.dart';
import 'package:job_finder/global_widgets/sub_header.dart';
import 'package:job_finder/model/job.dart';

class JobOverview extends StatefulWidget {
  Job job;
  JobOverview({this.job});

  @override
  _JobOverviewState createState() => _JobOverviewState();
}

class _JobOverviewState extends State<JobOverview> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "SALARY",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "\$${widget.job.salary.toString()} / hr",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "MIN EXPERIENCES",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            widget.job.minExperience,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "LOCATION",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            widget.job.location,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SubHeader(
                text: "about this position",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.job.description,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SubHeader(
                text: "responsibilities",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.job.responsibility,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                minWidth: MediaQuery.of(context).size.width,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
                child: Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                color: Colors.redAccent,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
