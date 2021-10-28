import 'dart:io';

import 'package:flutter/material.dart';
import 'package:network_to_file_image/network_to_file_image.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class CachedImageManager
{
  static var appDocsDir;
  static String imageurl="";
  static File fileFromDocsDir(String imageurl) {
    String pathName = p.join(appDocsDir.path, imageurl);
    return File(pathName);
  }

static  String getFilePath(String imageurl)
  {


    String filepath=imageurl;
    filepath=filepath.replaceAll(".","_");
    filepath=filepath.replaceAll("%20","_");
    filepath=filepath.replaceAll("/","_");
    int n=filepath.length;
    filepath=filepath.substring(n-7,n);
    filepath=filepath + ".png";

    return filepath;
  }

  Widget _image() {
    return Image(

      image: NetworkToFileImage(
        url: imageurl,
        file: fileFromDocsDir(getFilePath(imageurl)),
        debug: true,
      ),
      errorBuilder: (context, error, stackTrace) {
        return Text('Download image failed.');
      },
    );
  }
}