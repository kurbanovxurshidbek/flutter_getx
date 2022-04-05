import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import '../views/item_main_post.dart';

class MainPage extends StatefulWidget {
  static const String id = "/main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<MainController>().apiPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pattern - GetX"),
        ),
        body: Obx(
              () => Stack(
            children: [
              ListView.builder(
                itemCount: Get.find<MainController>().items.length,
                itemBuilder: (ctx, index) {
                  return itemMainPost(Get.find<MainController>(), Get.find<MainController>().items[index]);
                },
              ),
              Get.find<MainController>().isLoading.value
                  ? Center(
                child: CircularProgressIndicator(),
              )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: () {
            // Respond to button press
          },
          child: Icon(Icons.add),
        ));
  }
}
