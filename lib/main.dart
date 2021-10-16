import 'package:flutter/material.dart';
import 'package:vsjconnector/vsjapp.dart';
import 'package:vsjconnector/jsonhandler.dart';
import 'package:vsjconnector/downloader.dart';
import 'package:vsjconnector/drawersupplier.dart';
import 'databasehandler.dart';

void main() async {
  try {
    await DatabaseHandler.initialize();
    await DrawerSupplier.getDrawer();
  } catch (ex) {
    print(ex);
  }
  runApp(const VsjApp());
}
