import 'package:geddit/geddit.dart';
import 'package:geddit/src/crawler/crawler.dart';

void main() async {
  var a = Awesome();

  var crawler = Crawler();
  await crawler.crawl();
}
