import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/global_widgets/category_card.dart';
import 'package:job_finder/global_widgets/job_card.dart';
import 'package:job_finder/global_widgets/search_box.dart';
import 'package:job_finder/global_widgets/sub_header.dart';
import 'package:job_finder/model/category.dart';
import 'package:job_finder/model/job.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class FindJob extends StatefulWidget {
  @override
  _FindJobState createState() => _FindJobState();
}

class _FindJobState extends State<FindJob> {
  double _defaultHeight = 30;
  List<Job> jobs = [
    Job(
      "Illustrator",
      lipsum.createParagraph(),
      "Graphic Design",
      80,
      "2-3",
      "Remote",
      lipsum.createText(numParagraphs: 3, numSentences: 5),
      "PayPal",
      false,
      "assets/images/paypal_logo.png",
    ),
    Job(
      "UI Designer",
      lipsum.createParagraph(),
      "UX/UI Design",
      40,
      "2-3",
      "Remote",
      lipsum.createText(numParagraphs: 3, numSentences: 5),
      "Spotify",
      false,
      "assets/images/spotify_logo.png",
    ),
    Job(
      "Software Engineer",
      lipsum.createParagraph(),
      "Programmer",
      120,
      "3-5",
      "Remote",
      lipsum.createText(numParagraphs: 3, numSentences: 5),
      "ExxonMobil",
      false,
      "assets/images/exxon_logo.png",
    ),
  ];

  List<JobCategory> categories = [
    JobCategory("UX/UI Designer", 128),
    JobCategory("Graphic Designer", 128),
    JobCategory("Programmer", 128),
    JobCategory("Business Analyst", 128),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TobNavBar(),
                  SizedBox(
                    height: _defaultHeight,
                  ),
                  HeaderText(),
                  SizedBox(
                    height: 20,
                  ),
                  SearchBox(),
                  SizedBox(
                    height: _defaultHeight,
                  ),
                  SubHeader(text: "suggested for you"),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: jobs.map((job) => JobCard(job)).toList(),
                    ),
                  ),
                  SizedBox(
                    height: _defaultHeight,
                  ),
                  SubHeader(text: "interesting categories"),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categories
                          .map((category) => CategoryCard(category: category))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row TobNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.bar_chart,
            size: 30,
            textDirection: TextDirection.rtl,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.filter_list,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget HeaderText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What's up Ami?",
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Find your dream job",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ],
    );
  }
}
