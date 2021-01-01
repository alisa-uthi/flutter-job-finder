import 'package:flutter/material.dart';
import 'package:job_finder/model/category.dart';

class CategoryCard extends StatelessWidget {
  final JobCategory category;

  CategoryCard({this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 200,
        height: 130,
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
          padding: const EdgeInsets.only(left: 15.0,),
          child: Row(
            children: [
              Icon(
                Icons.category,
                size: 40,
                color: Colors.amber,
              ),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        category.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "${category.numberOfJobs} jobs",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
