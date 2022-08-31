import 'package:flutter/material.dart';
import 'package:jobportal/UI/custom_widgets/home__app_bar.dart';
import 'package:jobportal/UI/custom_widgets/job_list.dart';
import 'package:jobportal/UI/custom_widgets/search_card.dart';
import 'package:jobportal/UI/custom_widgets/tag_list.dart';

class HomeScreenAplicant extends StatelessWidget {
  const HomeScreenAplicant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2,child: Container()),
              Expanded(flex: 1, child: Container(
                color: Colors.grey.withOpacity(0.1),
              )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SearchCard(),
              TagList(),
              JobList(),
            ],
          ),
        ],
      ),
      ///this is the location of the button which we place there
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      ///this is the for the yellow plus button which show in the bottom of the nvigation bar\
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0,
        onPressed: () {},
        child: Icon(Icons.add,
        color: Colors.white,),
      ),
      
      
      
      ///here we are doing the navigation works means which all the thing
      ///which are include in the navigation bar..
      
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
      
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home,
              size: 20,),),
            BottomNavigationBarItem(
              label: 'Case',
              icon: Icon(Icons.cases_outlined,
                size: 20,),),
            BottomNavigationBarItem(
              label: '',
              icon: Text(''),),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(Icons.chat_outlined,
                size: 20,),),
            BottomNavigationBarItem(
              label: 'person',
              icon: Icon(Icons.person_outlined,
                size: 20,),)
          ],
        ),
      ),
    );
  }
}
