import 'dart:convert';

import 'package:http/http.dart' as http;

var link = "https://www.teamup.ink/varadhi_backend/app_apis/get_test_paper.php";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print("data is loaded");
    print("hii");
    return data;
  }
}
