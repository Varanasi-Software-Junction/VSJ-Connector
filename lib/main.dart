import 'package:flutter/material.dart';
import 'package:vsjconnector/vsjapp.dart';
import 'package:vsjconnector/jsonhandler.dart';
import 'package:vsjconnector/downloader.dart';
import 'package:vsjconnector/drawersupplier.dart';

void main() async {
  try {
    await DrawerSupplier.getDrawer();
  }
  catch (ex) {

  }
  runApp(const VsjApp());
}
