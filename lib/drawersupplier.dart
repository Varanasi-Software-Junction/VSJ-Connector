import 'package:flutter/material.dart';
import 'package:vsjconnector/downloader.dart';
import 'package:vsjconnector/jsonhandler.dart';

class DrawerSupplier extends StatefulWidget {

  static Future getDrawer() async
  {
    dynamic retvalue = await Downloader.getDownloadedData("url");
    retvalue = JsonUtilities.JsonDecoder(retvalue.toString());
    retvalue = retvalue["drawer"];
    for (var str in retvalue) {
      DrawerSupplier.drawers.add(str.toString());
    }
    return true;
  }


  static List<String> drawers = [];

  DrawerSupplier({Key? key}) : super(key: key) {
    for (String str in DrawerSupplier.drawers) {
      drawerItems.add({
        "icon": Icons.favorite,
        "name": str,
      });
    }
  }

  var drawerItems = [
  ];

  @override
  State<DrawerSupplier> createState() {
    return _DrawerSupplier();
  }
}

class _DrawerSupplier extends State<DrawerSupplier> {
  _DrawerSupplier();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.teal,
              ),
              child: Image.network(
                  'https://3.bp.blogspot.com/-py5FbTZgvjo/YDi1bsQq16I/AAAAAAAACB0/BxejbJBcHA4AVfkB33WYC3YlVmxElM7BwCK4BGAYYCw/s1600/Varanasi%2BSoftware%2BJunction%2BPhone%2BLogo.png'),
            ),

            //********************************

            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.drawerItems.length,
              itemBuilder: (BuildContext context, int index) {
                Map item = widget.drawerItems[index];
                return ListTile(
                  leading: Icon(
                    item['icon'],
                    color: (index % 2 == 0) ? Colors.pink : Colors.teal,
                  ),
                  title: Text(
                    item['name'],
                    style: TextStyle(
                      color: (index % 2 != 0) ? Colors.pink : Colors.teal,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                );
              },
            ),

            //********************************
          ]),
    );
  }
}
