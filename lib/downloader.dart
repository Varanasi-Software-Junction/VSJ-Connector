import 'package:http/http.dart' as http;
class Downloader
{
static Future<String> getDownloadedData(String url)
async {
  Uri uri=Uri.http("directsell.biz", "/downloads/drawer.txt");
  var response=await http.get(uri);
  print(response.statusCode);
  if(response.statusCode==200)
  return response.body;

  return "error";
}
}