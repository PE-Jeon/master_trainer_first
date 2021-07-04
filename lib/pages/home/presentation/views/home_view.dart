

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_trainer_first/pages/home/presentation/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
      ),
      body: Container(),
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
            title: Text('Favorites'),
            icon: Icon(Icons.favorite)
          ),
          BottomNavigationBarItem(
              title: Text('Music'),
              icon: Icon(Icons.music_note)
          ),
          BottomNavigationBarItem(
              title: Text('Places'),
              icon: Icon(Icons.location_on)
          ),
          BottomNavigationBarItem(
              title: Text('News'),
              icon: Icon(Icons.library_books)
          ),
        ],
      ),)
    );
  }

}

