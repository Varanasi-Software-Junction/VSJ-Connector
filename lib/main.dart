import 'package:flutter/material.dart';
import 'package:vsjconnector/vsjapp.dart';
import 'package:vsjconnector/jsonhandler.dart';
import 'package:vsjconnector/downloader.dart';
import 'package:vsjconnector/drawersupplier.dart';
import 'databasehandler.dart';
import 'dart:io';
import 'cachedimagemanager.dart';
import 'package:flutter/material.dart';
import 'package:network_to_file_image/network_to_file_image.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    CachedImageManager.appDocsDir = await getApplicationDocumentsDirectory();

    await DatabaseHandler.initialize();
    await DrawerSupplier.getDrawer();
  } catch (ex) {
    print(ex);
  }
  runApp(const VsjApp());
}
