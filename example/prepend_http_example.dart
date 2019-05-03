import 'package:prepend_http/prepend_http.dart';

main() {
  print(prependHttp('localhost'));
  print(prependHttp('example.com'));
  print(prependHttp('example.com', https: false));
}
