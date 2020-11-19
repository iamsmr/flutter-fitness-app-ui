import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff4B4B87),
            ),
            onPressed: () {},
          ),
          title: Text(
            "STATS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff4B4B87),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Color(0xffA3A3CC),
          unselectedIconTheme: IconThemeData(
            color: Color(0xffA3A3CC)
          ),
          selectedItemColor: Color(0xff6161A8),
          selectedIconTheme: IconThemeData(
            color: Color(0xff484884),
          ),
          selectedLabelStyle: TextStyle(
            color: Color(0xff6161A8),
          ),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/profile.svg",
                height: 30,
                width: 30,
                color: Color(0xff8989BE),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/stats.svg",
                height: 30,
                width: 30,
                color: Color(0xff8989BE),
              ),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/reward.svg",
                height: 30,
                width: 30,
                color: Color(0xff8989BE),
              ),
              label: 'rewards',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/goal.svg",
                height: 30,
                width: 30,
                color: Color(0xff8989BE),
              ),
              label: 'goal',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xff4B4B87).withOpacity(.2),
                ),
                child: TabBar(
                  unselectedLabelColor: Color(0xff4B4B87),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff4B4B87)),
                  tabs: [
                    Tab(text: "Day"),
                    Tab(text: "Weak"),
                    Tab(text: "Month"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    buildGridCard(
                      title: "Heart Rate",
                      color: Color(0xffFF6968),
                      icon: 'icons/heart-rate.svg',
                      dis: '80 - 20\nhealthy',
                      lable1: '120 ',
                      lable2: 'bpm',
                      ancColor: Colors.red[200],
                    ),
                    buildGridCard(
                      title: "Sleep",
                      color: Color(0xff7A54FF),
                      icon: 'icons/sleep.svg',
                      dis: '80 - 20\nhealthy',
                      lable1: '8 h ',
                      lable2: '42 m',
                      ancColor: Color(0xffBFADFF),
                    ),
                    buildGridCard(
                      title: "Energy Burn",
                      color: Color(0xffFF8F61),
                      icon: 'icons/heart-rate.svg',
                      dis: '80 - 20\nhealthy',
                      lable1: '582 ',
                      lable2: 'kacl',
                      ancColor: Color(0xffFFC5AD),
                    ),
                    buildGridCard(
                      title: "Steps",
                      color: Color(0xff2AC3FF),
                      icon: 'icons/steps.svg',
                      dis: 'Dialy Gola\n25,000',
                      lable1: '16741',
                      lable2: '',
                      ancColor: Color(0xffADE8FF),
                    ),
                    buildGridCard(
                      title: "Running",
                      color: Color(0xff2AC3FF),
                      icon: 'icons/running.svg',
                      dis: 'Dialy Goal\n10km',
                      lable1: '5,3',
                      lable2: 'km',
                      ancColor: Color(0xffADE8FF),
                    ),
                    buildGridCard(
                      title: "Cycling",
                      color: Color(0xff96DA45),
                      icon: 'icons/cycling.svg',
                      dis: 'Dialy Gola\n20km',
                      lable1: '25 km',
                      lable2: '',
                      ancColor: Color(0xffD8F2BB),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridCard({
    String title,
    String icon,
    String lable1,
    String lable2,
    String dis,
    Color ancColor,
    Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white60,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      lable1,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      lable2,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      dis,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: -8,
            right: -2,
            child: CircleAvatar(
              radius: 32,
              backgroundColor: ancColor,
              child: SvgPicture.asset(
                icon,
                height: 30,
                width: 30,
                color: Colors.white54,
              ),
            ),
          )
        ],
      ),
    );
  }
}
