import 'package:flutter/material.dart';
import 'package:jobportal/UI/custom_widgets/Job_item.dart';
import 'package:jobportal/UI/custom_widgets/job_list.dart';
import 'package:jobportal/core/model/job.dart';

class SearchList extends StatelessWidget {
  final joblist = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
   return Container(
       margin: EdgeInsets.only(
         top: 25,
       ),
     child: ListView.separated(
       padding: EdgeInsets.only(
         left: 25,
         right: 25,
         bottom: 25,
       ),
         itemBuilder: (context,index) => JobItem(
           joblist[index],
           showtime: true,
         ),
         separatorBuilder: (_,index) => SizedBox(height: 20,),
         itemCount: joblist.length),
   );

  }
}
