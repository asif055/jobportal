
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/UI/custom_widgets/Job_item.dart';
import 'package:jobportal/UI/custom_widgets/job_detail.dart';
import 'package:jobportal/core/model/job.dart';

class JobList extends StatelessWidget {
  final joblist = Job.generateJobs();
//  const JobList({Key? key}) : super(key: key);

  @override
  Widget build(  BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,

          ///here i wrap the Job_Iteam to GestureDetector
          itemBuilder: (context,index) => GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context, 
                builder: (conetxt) => JobDetail(joblist[index]));
            },

            child: JobItem(joblist[index])),
          separatorBuilder:(_,index) => SizedBox(
            width: 15,
          ),
          itemCount: joblist.length),
    );
  }
}
