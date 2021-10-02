import 'package:flutter/material.dart';
import 'package:vsjconnector/floatingbutton.dart';
import 'package:vsjconnector/drawersupplier.dart';
import 'package:vsjconnector/downloader.dart';
import 'package:vsjconnector/jsonhandler.dart';

class VsjHomePage extends StatefulWidget {
  const VsjHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VsjHomePage> createState() => _VsjHomePageState();
}

class _VsjHomePageState extends State<VsjHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: Center(
              child: Image.network(
                  'https://3.bp.blogspot.com/-py5FbTZgvjo/YDi1bsQq16I/AAAAAAAACB0/BxejbJBcHA4AVfkB33WYC3YlVmxElM7BwCK4BGAYYCw/s1600/Varanasi%2BSoftware%2BJunction%2BPhone%2BLogo.png'),
            ),
          ),
        ],
      ),
      drawer: DrawerSupplier(),
      floatingActionButton: const FloatingButton(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
