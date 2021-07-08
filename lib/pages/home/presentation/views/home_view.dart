

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_trainer_first/pages/home/presentation/controller/home_controller.dart';
import 'package:master_trainer_first/pages/home/presentation/views/splashpage.dart';
import 'package:master_trainer_first/pages/routine/presentation/views/routine_view.dart';
import 'package:master_trainer_first/pages/schedule/presentation/views/schedule_view.dart';

class HomeView extends GetView<HomeController> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: controller.tabIndex.value,
        children: [
          ScheduleView(),
          RoutineView(),
        ]
      )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: controller.tabIndex.value,
        onTap: controller.changeTabIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
              label: 'Music',
              icon: Icon(Icons.music_note)
          ),
          BottomNavigationBarItem(
              label: 'Places',
              icon: Icon(Icons.location_on)
          ),
          BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings)
          ),
        ],
      ),)
    );
  }

}

