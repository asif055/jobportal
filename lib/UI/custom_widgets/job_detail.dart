import 'package:flutter/material.dart';
import 'package:jobportal/UI/custom_widgets/icon_text.dart';
import 'package:jobportal/core/model/job.dart';

class JobDetail extends StatelessWidget {
  final Job job;

  ///a constructrator
  JobDetail(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        height: 550,
        child: SingleChildScrollView(
          child: Column(
            ///crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 5,
                width: 60,
                color: Colors.grey.withOpacity(0.3),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ///Here we use container for the icon
                          Container(
                            height: 40,
                            width: 40,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            child: Image.asset(job.logoURL),
                          ),
                          const SizedBox(
                            width: 10,
                          ),

                          ///And here we use text for the company
                          Text(
                            job.company,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            job.isMark
                                ? Icons.bookmark
                                : Icons.bookmark_outline_rounded,
                            color: job.isMark
                                ? Theme.of(context).primaryColor
                                : Colors.black,
                          ),
                          const Icon(Icons.more_horiz_outlined),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    job.title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconText(Icons.location_on_outlined, job.location),
                      IconText(Icons.access_time_outlined, job.time),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Requirements',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ...job.req
                      .map((e) => Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 300),
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                      wordSpacing: 2.5,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25),
                    height: 45,
                    width: double.maxFinite,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      onPressed: () {},
                      child: Text('Apply Now'),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
