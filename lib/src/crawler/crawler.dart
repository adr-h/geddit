import 'package:http/http.dart' as http;
import 'package:draw/draw.dart';

class Crawler {
  http.Client client = http.Client();

  Crawler();

  crawl() async {
    var reddit = await Reddit.createScriptInstance(
      configUri: Uri.file('../../../draw.ini')
    );
    var stream = reddit.subreddit("catpictures").hot(
      after: 't3_oiqveq', //sub.fullname, NOT sub.id
    );
    var submissions = await stream.cast<Submission>().toList();

    for (var sub in submissions) {
      print(sub.fullname);
    }

    print('done');

  }
}
