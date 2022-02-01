import 'package:exam_ui/modes/products_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Icon(Icons.restaurant,color: Colors.white,),
        title: Text("FriendlyEats"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: Container(
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  child: Icon(
                    Icons.filter_list_sharp,
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "All Restaurant",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "by restaurt",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        controller: controller,
        itemCount: ItemList.itemList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 5,),
                Container(
                  height: 175,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ItemList.itemList[index].image),
                    )
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            ItemList.itemList[index].type,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            ItemList.itemList[index].price,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                        size: 25,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                        size: 25,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                        size: 25,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                        size: 25,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.yellow.shade700,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Text(
                  ItemList.itemList[index].foodName,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  void _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.extentAfter < 7) {
    }
  }
}
