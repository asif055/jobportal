import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/UI/custom_widgets/icon_text.dart';
import 'package:jobportal/core/model/job.dart';

import 'flutter/material.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showtime;
  JobItem(this.job, {this.showtime = false});
  // const JobItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Job Card or Box,
    return Container(
        width: 270,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),

        //inside the box we have iteams which i divide into the Coulmn
        //example we have the logo name and icon in one Column and on
        //the other side we have the other Column which means we have to put
        //Some things on the other column and so on...
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Image.asset(job.logoURL),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(job.company, style: const TextStyle())
                  ],
                ),
                Icon(
                  job.isMark ? Icons.bookmark : Icons.bookmark_outline_outlined,
                  color: job.isMark
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              job.title,
              style: const TextStyle(
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
                if (showtime) IconText(Icons.access_time_outlined, job.time),
              ],
            )
          ],
        ));
  }
}
