import 'package:http/http.dart' as http;

class ApiCall {
  static Future<String> getUser() async {
    var result = await http.get(
        Uri.parse("https://mngengaleeletronics.co.tz/private/dasi.php"),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        });

    var data = result.body;

    print('USER DEATILS ====================>  $data');

    return data;
  }

  static Future<dynamic> sendQrCodeToServer(String code) async {
    var result = await http.post(
        Uri.parse("https://mngengaleeletronics.co.tz/private/dasi.php"),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        });

    var data = result.body;
    print("RESPONSE OF CODE SENT ==================> $data");

    return data;
  }
}
